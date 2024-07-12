setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    cd "$BATS_TEST_DIRNAME/lib_tests/string_tests/"
}

@test "capitalize_test" {
    run  amber capitalize_test.ab
    echo "Captured output: $output"
    assert_output '<Bash rocks Bash rocks  bash Rocks >'
}

@test "char_at_test" {
    run  amber char_at_test.ab
    echo "Captured output: $output"
    assert_output '<h B h   >'
}

@test "char_set_test" {
    run  amber char_set_test.ab
    echo "Captured output: $output"
    assert_output 'BasH Rocks Hash Rocks BasH Rocks H B Bash RocksH'
}

@test "floor_test" {
    run  amber floor_test.ab
    echo "Captured output: $output"
    assert_output '-3 3 3 0 0'
}

@test "in_string_test" {
    run  amber in_string_test.ab
    echo "Captured output: $output"
    assert_output '1 0 1 0 1'
}

@test "index_in_string_test" {
    run  amber index_in_string_test.ab
    echo "Captured output: $output"
    assert_output '1 -1 -1 -1 -1'
}

@test "lpad_test" {
    run  amber lpad_test.ab
    echo "Captured output: $output"
    assert_output '<-----hello hello hello ---------- hello>'
}

@test "occurrences_test" {
    run  amber occurrences_test.ab
    echo "Captured output: $output"
    assert_output '2 0 5 0'
}

@test "remove_puncation_test" {
    run  amber remove_puncation_test.ab
    echo "Captured output: $output"
    assert_output '<Bash rocks> <Bash is kool> <Bashshell> <> < >'
}

@test "repeat_test" {
    run  amber repeat_test.ab
    echo "Captured output: $output"
    assert_output '<BashBashBash Bash BashBashBash  BBB >'
}

@test "reverse_test" {
    run  amber reverse_test.ab
    echo "Captured output: $output"
    assert_output 'skcoR hsaB  B'
}

@test "rpad_test" {
    run  amber rpad_test.ab
    echo "Captured output: $output"
    assert_output '<hello----- hello hello ---------- hello>'
}

@test "slice_test" {
    run  amber slice_test.ab
    echo "Captured output: $output"
    assert_output '<sh Ro Rocks Rocks   Rock  ?B R >'
}

@test "squeeze_test" {
    run  amber squeeze_test.ab
    echo "Captured output: $output"
    assert_output '[hello, hello] [hello, hello] [] []'
}

@test "sanitize_test" {
    run  amber sanitize_test.ab
    echo "Captured output: $output"
    assert_output '[Bash rocks] [Bash: is kool] [Bash1960=shell] [] []'
}

@test "strip_html_tags_test" {
    run  amber strip_html_tags_test.ab
    echo "Captured output: $output"
    assert_output '[hello,        hello] [hello,>>>>><<<<hello    ] [ ] []'
}

@test "title_test" {
    run  amber title_test.ab
    echo "Captured output: $output"
    assert_output '[Hello, Hello] [Hello, Hello] [] []'
}

@test "to_string_test" {
    run  amber to_string_test.ab
    echo "Captured output: $output"
    assert_output 'Bash Rocks 73  Amber Rocks 123'
}

@test "to_url_test" {
    run  amber to_url_test.ab
    echo "Captured output: $output"
    assert_output '[amber-rocks] [amber-rocks] [] []'
}

@test "zfill_test" {
    run  amber zfill_test.ab
    echo "Captured output: $output"
    assert_output '<00000hello hello hello 0000000000>'
}
