# State Diagram

                              +----------------------------------+
                              |                                  |
                              |            Root State            |
                              |                                  |
                              +----------------------------------+
                              |                                  |
                              |          State Headers:          |
                              | {Call Stack, Memory, Current...} |
                              |                                  |
                              +----------------+-----------------+
                                               |
                          +------------------------------------------+
                          |                    |                     |
                          |                    |                     |
                          |                    |                     |
                   +------+------+      +------+------+       +------+------+
Contested          |             |      |             |       |             |
Data-set +-------> | State Child |      | State Child |       | State Child |   <---+
(e.g.              |             |      |             |       |             |       |
hardfork)          +-------------+      +-------------+       +------+------+       |
                                                                     |              |
                                               ^                     |              |
                                               |                     |              |
                                               |                     |              |
                                               |              +------+------+       |
                                               +              |             |       |
                                           Contested          | State Child |   <---+
                                           Data-Set           |             |       |
                                         (client still        +------+------+       |
                                          out of date)               |              |
                                                                     |              |
                                                                     |              |
                                                                     |              |
                                                              +------+------+       |
                                                              |             |       |
                                                              | State Child |   <---+
                                                              |             |       |
                                                              +-------------+       +
                                                                               Uncontested
                                                                                Data-Set
                                                                             (e.g. successful
                                                                                hard-fork)
