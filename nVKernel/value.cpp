#include <nV/Kernel.h>

namespace nV {
var Kernel::value(sym x) {
    boost::unordered_map<sym, var>::const_iterator
    iter = owns.find(x);
    if (iter != owns.end())
        return lazy(iter->second);
    return x;
}
var Kernel::value(const Key& x) {
    switch (x.kind()) {
    case  Key::Null:
        return self();
    case Key::String:
        // mLocal[mLocal.size() - 1]
        // mLocal[mLocal.size() - 2]
        // ...?
        return slot(local(), x);
    case Key::Integer:
        if (self().isTuple()) {
            uint i = x.toUI();
            if (i < self().tuple().size)
                return lazy(self().tuple()[i]);
        }
        break;
    }
    return &x;
}
var Kernel::value(Tuple& x) {
    push(&x);
    var h = x[0];
    while (h.isTuple())
        h = h.tuple()[0];
    if (!h.isSymbol()) {
        if (h.isObject())
            h = h.object().type;
        else {
            pop();
            return &x;
        }
    }
    var r;
    if (certain(r, h.symbol(), x)) {
        pop();
        return r;
    }
    if (match(r, h.symbol(), x)) {
        pop();
        return r;
    }
    boost::unordered_map<sym, var>::const_iterator
    iter = values.find(h.symbol());
    if (iter != values.end()) {
        pop();
        return iter->second.cast<Value>()(*this, x);
    }
    pop();
    return &x;
}
var Kernel::value(const var& x) {
    switch (x.primary()) {
    case Primary::Symbol:
        return value(x.symbol());
    case Primary::Key:
        return value(x.key());
    case Primary::Tuple:
        return value(x.tuple());
    }
    return x;
}
bool Kernel::certain(var& r, sym h, const Tuple& x) {
    boost::unordered_map<sym, UMap>::const_iterator
    iter = certains.find(h);
    if (iter != certains.end()) {
        UMap::const_iterator
        iter2 = iter->second.find(&x);
        if (iter2 != iter->second.end()) {
            r = lazy(iter2->second);
            return true;
        }
    }
    return false;
}
bool Kernel::match(var& r, sym h, const Tuple& x) {
    boost::unordered_map<sym, Map>::const_iterator
    iter = matches.find(h);
    if (iter != matches.end()) {
        Map::const_iterator
        iter2 = iter->second.begin();
        while (iter2 != iter->second.end()) {
            //println(iter2->first);
            if (match(r, &x, iter2->second.cast<Match>()))
                return true;
            ++iter2;
        }
    }
    return false;
}
}
