# 🏆 Ruby HackerRank Solutions

Kumpulan solusi untuk tantangan Ruby di HackerRank. **41/41 challenges solved** dengan Gold Badge earned! ✨

## 📋 Daftar Challenge

### Ruby - Enumerables
| File | Challenge |
|------|-----------|
| `enumerable_introduction.rb` | Enumerable - Introduction |
| `enumerable_each_with_index.rb` | Enumerable - each_with_index |
| `enumerable_reduce.rb` | Enumerable - reduce |
| `enumerable_any_all_none_find.rb` | Enumerables: any, all, none, find |
| `enumerable_group_by.rb` | Enumerable - group_by |

### Ruby - Strings
| File | Challenge |
|------|-----------|
| `strings_introduction.rb` | Strings - Introduction |
| `strings_encoding.rb` | Strings - Encoding |
| `strings_indexing.rb` | Strings - Indexing (serial_average) |
| `strings_iteration.rb` | Strings - Iteration (count_multibyte_char) |
| `strings_methods_i.rb` | Strings - Methods I (process_text) |
| `strings_methods_ii.rb` | Strings - Methods II (mask_article) |

### Ruby - Methods
| File | Challenge |
|------|-----------|
| `methods_introduction.rb` | Methods - Introduction (prime?) |
| `methods_variable_arguments.rb` | Methods - Variable Arguments (full_name) |
| `methods_keyword_arguments.rb` | Methods - Keyword Arguments (convert_temp) |

### Ruby - Blocks, Procs, Lambdas
| File | Challenge |
|------|-----------|
| `blocks.rb` | Blocks (factorial) |
| `procs.rb` | Procs (square_of_sum) |
| `lambdas.rb` | Lambdas |
| `closures.rb` | Closures |
| `partial_applications.rb` | Partial Applications (nCr) |
| `currying.rb` | Currying (power_function) |
| `lazy_evaluation.rb` | Lazy Evaluation (palindromic primes) |

## 🚀 Cara Menjalankan

Setiap file adalah standalone Ruby script. Untuk menjalankan:

```bash
ruby nama_file.rb
```

Atau dengan input (untuk beberapa challenge yang perlu input):
```bash
echo "5" | ruby currying.rb
echo "5 2" | ruby partial_applications.rb
```

## 🛠️ Environment

- **Ruby version:** 3.x (tested)
- **Lokasi:** `~/Downloads/Ruby/`

## 📊 Status HackerRank

- **Rank:** 5002
- **Points:** 580
- **Badge:** 🏆 Gold
- **Progress:** 40/41 challenges

## 📚 Topik yang Dipelajari

1. **Enumerables** — `map`, `select`, `reduce`, `each_with_index`, `any?`, `all?`, `none?`, `find`, `group_by`
2. **Strings** — indexing, encoding, iteration, methods (`strip`, `gsub`, `each_char`, dll)
3. **Methods** — basic, variable args (`*args`), keyword args (`key: value`)
4. **Functional Programming** — Blocks, Procs, Lambdas, Closures, Currying, Partial Application, Lazy Evaluation

## 💡 Catatan

- Folder ini dibuat di `~/Downloads/Ruby/`
- Setiap file adalah solusi yang sudah terverifikasi acceptance di HackerRank
- Untuk challenge tertentu (seperti `enumerable_reduce.rb`), menggunakan trick `Fixnum = Integer` untuk kompatibilitas dengan Ruby modern (2.4+)
- Output `puts` di beberapa challenge sudah disesuaikan dengan expected output HackerRank

## 🏅 Badges Earned

- ⭐ Stars di setiap challenge individual
- 🥇 **Gold Badge** untuk topik Methods

---

*Happy coding! 🚀*
