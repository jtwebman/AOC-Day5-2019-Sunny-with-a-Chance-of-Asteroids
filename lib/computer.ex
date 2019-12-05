defmodule Computer do
  use Bitwise

  @input [
    3,
    225,
    1,
    225,
    6,
    6,
    1100,
    1,
    238,
    225,
    104,
    0,
    1102,
    89,
    49,
    225,
    1102,
    35,
    88,
    224,
    101,
    -3080,
    224,
    224,
    4,
    224,
    102,
    8,
    223,
    223,
    1001,
    224,
    3,
    224,
    1,
    223,
    224,
    223,
    1101,
    25,
    33,
    224,
    1001,
    224,
    -58,
    224,
    4,
    224,
    102,
    8,
    223,
    223,
    101,
    5,
    224,
    224,
    1,
    223,
    224,
    223,
    1102,
    78,
    23,
    225,
    1,
    165,
    169,
    224,
    101,
    -80,
    224,
    224,
    4,
    224,
    102,
    8,
    223,
    223,
    101,
    7,
    224,
    224,
    1,
    224,
    223,
    223,
    101,
    55,
    173,
    224,
    1001,
    224,
    -65,
    224,
    4,
    224,
    1002,
    223,
    8,
    223,
    1001,
    224,
    1,
    224,
    1,
    223,
    224,
    223,
    2,
    161,
    14,
    224,
    101,
    -3528,
    224,
    224,
    4,
    224,
    1002,
    223,
    8,
    223,
    1001,
    224,
    7,
    224,
    1,
    224,
    223,
    223,
    1002,
    61,
    54,
    224,
    1001,
    224,
    -4212,
    224,
    4,
    224,
    102,
    8,
    223,
    223,
    1001,
    224,
    1,
    224,
    1,
    223,
    224,
    223,
    1101,
    14,
    71,
    225,
    1101,
    85,
    17,
    225,
    1102,
    72,
    50,
    225,
    1102,
    9,
    69,
    225,
    1102,
    71,
    53,
    225,
    1101,
    10,
    27,
    225,
    1001,
    158,
    34,
    224,
    101,
    -51,
    224,
    224,
    4,
    224,
    102,
    8,
    223,
    223,
    101,
    6,
    224,
    224,
    1,
    223,
    224,
    223,
    102,
    9,
    154,
    224,
    101,
    -639,
    224,
    224,
    4,
    224,
    102,
    8,
    223,
    223,
    101,
    2,
    224,
    224,
    1,
    224,
    223,
    223,
    4,
    223,
    99,
    0,
    0,
    0,
    677,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    1105,
    0,
    99999,
    1105,
    227,
    247,
    1105,
    1,
    99999,
    1005,
    227,
    99999,
    1005,
    0,
    256,
    1105,
    1,
    99999,
    1106,
    227,
    99999,
    1106,
    0,
    265,
    1105,
    1,
    99999,
    1006,
    0,
    99999,
    1006,
    227,
    274,
    1105,
    1,
    99999,
    1105,
    1,
    280,
    1105,
    1,
    99999,
    1,
    225,
    225,
    225,
    1101,
    294,
    0,
    0,
    105,
    1,
    0,
    1105,
    1,
    99999,
    1106,
    0,
    300,
    1105,
    1,
    99999,
    1,
    225,
    225,
    225,
    1101,
    314,
    0,
    0,
    106,
    0,
    0,
    1105,
    1,
    99999,
    108,
    226,
    226,
    224,
    102,
    2,
    223,
    223,
    1006,
    224,
    329,
    101,
    1,
    223,
    223,
    1007,
    677,
    677,
    224,
    1002,
    223,
    2,
    223,
    1005,
    224,
    344,
    1001,
    223,
    1,
    223,
    8,
    226,
    677,
    224,
    1002,
    223,
    2,
    223,
    1006,
    224,
    359,
    1001,
    223,
    1,
    223,
    108,
    226,
    677,
    224,
    1002,
    223,
    2,
    223,
    1005,
    224,
    374,
    1001,
    223,
    1,
    223,
    107,
    226,
    677,
    224,
    102,
    2,
    223,
    223,
    1006,
    224,
    389,
    101,
    1,
    223,
    223,
    1107,
    226,
    226,
    224,
    1002,
    223,
    2,
    223,
    1005,
    224,
    404,
    1001,
    223,
    1,
    223,
    1107,
    677,
    226,
    224,
    102,
    2,
    223,
    223,
    1005,
    224,
    419,
    101,
    1,
    223,
    223,
    1007,
    226,
    226,
    224,
    102,
    2,
    223,
    223,
    1006,
    224,
    434,
    1001,
    223,
    1,
    223,
    1108,
    677,
    226,
    224,
    1002,
    223,
    2,
    223,
    1005,
    224,
    449,
    101,
    1,
    223,
    223,
    1008,
    226,
    226,
    224,
    102,
    2,
    223,
    223,
    1005,
    224,
    464,
    101,
    1,
    223,
    223,
    7,
    226,
    677,
    224,
    102,
    2,
    223,
    223,
    1006,
    224,
    479,
    101,
    1,
    223,
    223,
    1008,
    226,
    677,
    224,
    1002,
    223,
    2,
    223,
    1006,
    224,
    494,
    101,
    1,
    223,
    223,
    1107,
    226,
    677,
    224,
    1002,
    223,
    2,
    223,
    1005,
    224,
    509,
    1001,
    223,
    1,
    223,
    1108,
    226,
    226,
    224,
    1002,
    223,
    2,
    223,
    1006,
    224,
    524,
    101,
    1,
    223,
    223,
    7,
    226,
    226,
    224,
    102,
    2,
    223,
    223,
    1006,
    224,
    539,
    1001,
    223,
    1,
    223,
    107,
    226,
    226,
    224,
    102,
    2,
    223,
    223,
    1006,
    224,
    554,
    101,
    1,
    223,
    223,
    107,
    677,
    677,
    224,
    102,
    2,
    223,
    223,
    1006,
    224,
    569,
    101,
    1,
    223,
    223,
    1008,
    677,
    677,
    224,
    1002,
    223,
    2,
    223,
    1006,
    224,
    584,
    1001,
    223,
    1,
    223,
    8,
    677,
    226,
    224,
    1002,
    223,
    2,
    223,
    1005,
    224,
    599,
    101,
    1,
    223,
    223,
    1108,
    226,
    677,
    224,
    1002,
    223,
    2,
    223,
    1005,
    224,
    614,
    101,
    1,
    223,
    223,
    108,
    677,
    677,
    224,
    102,
    2,
    223,
    223,
    1005,
    224,
    629,
    1001,
    223,
    1,
    223,
    8,
    677,
    677,
    224,
    1002,
    223,
    2,
    223,
    1005,
    224,
    644,
    1001,
    223,
    1,
    223,
    7,
    677,
    226,
    224,
    102,
    2,
    223,
    223,
    1006,
    224,
    659,
    1001,
    223,
    1,
    223,
    1007,
    226,
    677,
    224,
    102,
    2,
    223,
    223,
    1005,
    224,
    674,
    101,
    1,
    223,
    223,
    4,
    223,
    99,
    226
  ]

  def solve() do
    @input |> run()
  end

  def run(program) do
    step(program, 0)
  end

  def step(program, pos) do
    case Enum.at(program, pos) do
      instruction when instruction < 99 ->
        run_step(program, pos, instruction, 0)

      instruction when instruction > 99 ->
        step_with_mode(program, pos)

      _ ->
        {:ok, program}
    end
  end

  def step_with_mode(program, pos) do
    code =
      Enum.at(program, pos)
      |> Integer.to_string()
      |> String.pad_leading(5, "0")

    param_mode = 0

    param_mode =
      case String.at(code, 0) do
        "1" -> param_mode + 4
        _ -> param_mode
      end

    param_mode =
      case String.at(code, 1) do
        "1" -> param_mode + 2
        _ -> param_mode
      end

    param_mode =
      case String.at(code, 2) do
        "1" -> param_mode + 1
        _ -> param_mode
      end

    opcode = code |> String.slice(3, 4) |> String.to_integer()

    run_step(program, pos, opcode, param_mode)
  end

  def run_step(program, pos, opcode, param_mode) do
    case opcode do
      instruction when instruction == 1 ->
        add(program, pos, param_mode)

      instruction when instruction == 2 ->
        mutiply(program, pos, param_mode)

      instruction when instruction == 3 ->
        store(program, pos, param_mode)

      instruction when instruction == 4 ->
        output(program, pos, param_mode)

      instruction when instruction == 5 ->
        jump_if_true(program, pos, param_mode)

      instruction when instruction == 6 ->
        jump_if_false(program, pos, param_mode)

      instruction when instruction == 7 ->
        less_then(program, pos, param_mode)

      instruction when instruction == 8 ->
        equals(program, pos, param_mode)

      _ ->
        program
    end
  end

  def add(program, pos, param_modes) do
    program
    |> List.replace_at(
      Enum.at(program, pos + 3),
      read_param(program, pos, 1, param_modes) + read_param(program, pos, 2, param_modes)
    )
    |> step(pos + 4)
  end

  def mutiply(program, pos, param_modes) do
    program
    |> List.replace_at(
      Enum.at(program, pos + 3),
      read_param(program, pos, 1, param_modes) * read_param(program, pos, 2, param_modes)
    )
    |> step(pos + 4)
  end

  def store(program, pos, _) do
    input = IO.gets("Input:") |> String.trim() |> String.to_integer()

    program
    |> List.replace_at(
      Enum.at(program, pos + 1),
      input
    )
    |> step(pos + 2)
  end

  def jump_if_true(program, pos, param_modes) do
    case read_param(program, pos, 1, param_modes) != 0 do
      true -> step(program, read_param(program, pos, 2, param_modes))
      _ -> step(program, pos + 3)
    end
  end

  def jump_if_false(program, pos, param_modes) do
    case read_param(program, pos, 1, param_modes) == 0 do
      true -> step(program, read_param(program, pos, 2, param_modes))
      _ -> step(program, pos + 3)
    end
  end

  def less_then(program, pos, param_modes) do
    case read_param(program, pos, 1, param_modes) < read_param(program, pos, 2, param_modes) do
      true ->
        program
        |> List.replace_at(
          Enum.at(program, pos + 3),
          1
        )
        |> step(pos + 4)

      _ ->
        program
        |> List.replace_at(
          Enum.at(program, pos + 3),
          0
        )
        |> step(pos + 4)
    end
  end

  def equals(program, pos, param_modes) do
    case read_param(program, pos, 1, param_modes) == read_param(program, pos, 2, param_modes) do
      true ->
        program
        |> List.replace_at(
          Enum.at(program, pos + 3),
          1
        )
        |> step(pos + 4)

      _ ->
        program
        |> List.replace_at(
          Enum.at(program, pos + 3),
          0
        )
        |> step(pos + 4)
    end
  end

  def output(program, pos, param_modes) do
    IO.puts("output")
    IO.puts(read_param(program, pos, 1, param_modes))
    step(program, pos + 2)
  end

  def read_param(program, pos, 1, param_modes) do
    case band(param_modes, 1) == 1 do
      true -> Enum.at(program, pos + 1)
      _ -> Enum.at(program, Enum.at(program, pos + 1))
    end
  end

  def read_param(program, pos, 2, param_modes) do
    case band(param_modes, 2) == 2 do
      true ->
        Enum.at(program, pos + 2)

      _ ->
        Enum.at(program, Enum.at(program, pos + 2))
    end
  end
end
