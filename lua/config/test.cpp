#include <iostream>

inline auto test_func(const int &parm_a, const int &parm_b) {
    switch (parm_a) {
        case 1:
            break;
        case 2:
            break;
        default:
            break;
    }
}

template <typename T>
requires std::same_as<T,int>
inline constexpr auto test_func_b() {
    return;
}

template <typename T>
concept = std::same_as<T,int>;

struct other_class {};

// this is a comment
class Test_Class : public other_class{
public:
    Test_Class() = default;
    ~Test_Class() = default;
};
