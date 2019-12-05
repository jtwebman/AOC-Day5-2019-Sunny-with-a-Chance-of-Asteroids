defmodule ComputerTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "1,9,10,3,2,3,11,0,99,30,40,50" do
    {:ok, program} = Computer.run([1, 9, 10, 3, 2, 3, 11, 0, 99, 30, 40, 50])

    assert program == [
             3500,
             9,
             10,
             70,
             2,
             3,
             11,
             0,
             99,
             30,
             40,
             50
           ]
  end

  test "1,0,0,0,99" do
    {:ok, program} = Computer.run([1, 0, 0, 0, 99])

    assert program == [
             2,
             0,
             0,
             0,
             99
           ]
  end

  test "2,3,0,3,99" do
    {:ok, program} = Computer.run([2, 3, 0, 3, 99])

    assert program == [
             2,
             3,
             0,
             6,
             99
           ]
  end

  test "2,4,4,5,99,0" do
    {:ok, program} = Computer.run([2, 4, 4, 5, 99, 0])

    assert program == [
             2,
             4,
             4,
             5,
             99,
             9801
           ]
  end

  test "3,0,4,0,99" do
    assert capture_io("2", fn -> Computer.run([3, 0, 4, 0, 99]) end) == "Input:output\n2\n"
  end

  test "Part 1" do
    assert capture_io("1", fn -> Computer.solve() end) == """
           Input:output
           0
           output
           0
           output
           0
           output
           0
           output
           0
           output
           0
           output
           0
           output
           0
           output
           0
           output
           7839346
           """
  end

  test "3,9,8,9,10,9,4,9,99,-1,8" do
    assert capture_io("1", fn -> Computer.run([3, 9, 8, 9, 10, 9, 4, 9, 99, -1, 8]) end) ==
             "Input:output\n0\n"

    assert capture_io("8", fn -> Computer.run([3, 9, 8, 9, 10, 9, 4, 9, 99, -1, 8]) end) ==
             "Input:output\n1\n"
  end

  test "3,9,7,9,10,9,4,9,99,-1,8" do
    assert capture_io("1", fn -> Computer.run([3, 9, 7, 9, 10, 9, 4, 9, 99, -1, 8]) end) ==
             "Input:output\n1\n"

    assert capture_io("8", fn -> Computer.run([3, 9, 7, 9, 10, 9, 4, 9, 99, -1, 8]) end) ==
             "Input:output\n0\n"
  end

  test "3,3,1108,-1,8,3,4,3,99" do
    assert capture_io("1", fn -> Computer.run([3, 3, 1108, -1, 8, 3, 4, 3, 99]) end) ==
             "Input:output\n0\n"

    assert capture_io("8", fn -> Computer.run([3, 3, 1108, -1, 8, 3, 4, 3, 99]) end) ==
             "Input:output\n1\n"
  end

  test "3,3,1107,-1,8,3,4,3,99" do
    assert capture_io("1", fn -> Computer.run([3, 3, 1107, -1, 8, 3, 4, 3, 99]) end) ==
             "Input:output\n1\n"

    assert capture_io("8", fn -> Computer.run([3, 3, 1107, -1, 8, 3, 4, 3, 99]) end) ==
             "Input:output\n0\n"
  end

  test "3,12,6,12,15,1,13,14,13,4,13,99,-1,0,1,9" do
    assert capture_io("0", fn ->
             Computer.run([3, 12, 6, 12, 15, 1, 13, 14, 13, 4, 13, 99, -1, 0, 1, 9])
           end) ==
             "Input:output\n0\n"

    assert capture_io("8", fn ->
             Computer.run([3, 12, 6, 12, 15, 1, 13, 14, 13, 4, 13, 99, -1, 0, 1, 9])
           end) ==
             "Input:output\n1\n"
  end

  test "3,3,1105,-1,9,1101,0,0,12,4,12,99,1" do
    assert capture_io("0", fn ->
             Computer.run([3, 3, 1105, -1, 9, 1101, 0, 0, 12, 4, 12, 99, 1])
           end) ==
             "Input:output\n0\n"

    assert capture_io("8", fn ->
             Computer.run([3, 3, 1105, -1, 9, 1101, 0, 0, 12, 4, 12, 99, 1])
           end) ==
             "Input:output\n1\n"
  end

  test "large part2" do
    input = [
      3,
      21,
      1008,
      21,
      8,
      20,
      1005,
      20,
      22,
      107,
      8,
      21,
      20,
      1006,
      20,
      31,
      1106,
      0,
      36,
      98,
      0,
      0,
      1002,
      21,
      125,
      20,
      4,
      20,
      1105,
      1,
      46,
      104,
      999,
      1105,
      1,
      46,
      1101,
      1000,
      1,
      20,
      4,
      20,
      1105,
      1,
      46,
      98,
      99
    ]

    assert capture_io("7", fn -> Computer.run(input) end) == "Input:output\n999\n"
    assert capture_io("8", fn -> Computer.run(input) end) == "Input:output\n1000\n"
    assert capture_io("9", fn -> Computer.run(input) end) == "Input:output\n1001\n"
  end
end
