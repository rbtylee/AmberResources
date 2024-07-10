setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    cd "$BATS_TEST_DIRNAME/lib_tests/string_tests/"
}

@test "char_at_test Test" {
    run  amber char_at_test.ab
    echo "Captured output: $output"
    assert_output '<h B h   >'
}

@test "char_set_test Test" {
    run  amber char_set_test.ab
    echo "Captured output: $output"
    assert_output 'BasH Rocks Hash Rocks BasH Rocks H B Bash RocksH'
}

@test "floor_test Test" {
    run  amber floor_test.ab
    echo "Captured output: $output"
    assert_output '-3 3 3 0 0'
}

@test "in_string_test Test" {
    run  amber in_string_test.ab
    echo "Captured output: $output"
    assert_output '1 0 1 0 1'
}

@test "lpad_test Test" {
    run  amber lpad_test.ab
    echo "Captured output: $output"
    assert_output '<-----hello hello hello ---------- hello>'
}

@test "repeat_test Test" {
    run  amber repeat_test.ab
    echo "Captured output: $output"
    assert_output '<BashBashBash Bash BashBashBash  BBB >'
}

@test "reverse_test Test" {
    run  amber reverse_test.ab
    echo "Captured output: $output"
    assert_output 'skcoR hsaB  B'
}

@test "rpad_test Test" {
    run  amber rpad_test.ab
    echo "Captured output: $output"
    assert_output '<hello----- hello hello ---------- hello>'
}

@test "slice_test Test" {
    run  amber slice_test.ab
    echo "Captured output: $output"
    assert_output '<sh Ro Rocks Rocks   Rock  ?B R >'
}

@test "to_string_test Test" {
    run  amber to_string_test.ab
    echo "Captured output: $output"
    assert_output 'Bash Rocks 73  Amber Rocks 123'
}

@test "zfill_test Test" {
    run  amber zfill_test.ab
    echo "Captured output: $output"
    assert_output '<00000hello hello hello 0000000000>'
}
