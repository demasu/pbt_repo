#include "include/quickcheck.hh"
#include <vector>
using namespace quickcheck;

typedef std::vector<int> Vector;
typedef int Num;

static void reverse(Vector& xs) {
    std::reverse(xs.begin(), xs.end());
}

class Math {
    public:
    int add(int a, int b) {
        int result = a + b;
        return result;
    }
};

class PRCommutativeProperty : public Property<int, int> {
    bool holdsFor(const int &a, const int &b) {
        Math m;
        int result1 = m.add(a, b);
        int result2 = m.add(b, a);
        return result1 == result2;
    }
};

class PRAssocitiveProperty : public Property<int> {
    bool holdsFor(const int &a) {
        Math m;
        int result1 = m.add( m.add(a, 1), 1 );
        int result2 = m.add(a, 2);
        return result1 == result2;
    }
};

class PRIdentityProperty : public Property<int> {
    bool holdsFor(const int &a) {
        Math m;
        int result = m.add(a, 0);
        return result == a;
    }
};

int main() {
    PRCommutativeProperty c;
    std::cout << "When I add two numbers the result should not rely on the order the numbers are given" << std::endl;
    c.check(1000);

    PRAssocitiveProperty a;
    std::cout << "Adding 1 twice is the same as adding 2 once" << std::endl;
    a.check(1000);

    PRIdentityProperty i;
    std::cout << "Adding 0 is the same as doing nothing" << std::endl;
    i.check(1000);

    return 0;
}