## Code perf snipits 
### C++ create object to monitor execution time.

## C++ scoped perf timer
```
#include <iostream>
#include <chrono>

class Timer{
public:
    Timer(){
        std::chrono::high_resolution_clock::now();
    }

    ~Time(){
        Stop();
    }
    void Stop(){
        auto endTimePoint = std::chrono::high_resolution_clock::now();

        auto start = std::chrono::time_point_cast< std::chrono::microseconds>(m_StartTimePoint).time_since_epoch().count();

        auto end = std::chrono::time_point_cast< std::chrono::microseconds>(endTimePoint).time_since_epoch().count();

        auto duration = end - start;

        double ms = duration * 0.001;

        std::cout << duration << "us\n" << ms << "ms:";
    }

private:
    std::chrono::time_point< std::chrono::high_resolution_clock::now()> m_StartTimePoint;
    }

}

int main(){
    Timer timer;
    
}
```

## Python Performance Profile
```
python -m cProfile -o scriptAnalyst.prof myScript.py

# Analyse in pstats - part of the standard library
import pstats
p = pstats.Stats('scriptAnalyst.prof')
p.sort_stats('calls)
p.print_stats(5)
```

## GUI version - Run Snake Run
