defmodule ListChallengeTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the quantity of odd numbers" do
      assert ListChallenge.call([1, 2, 3, 4, 5]) == 3
      assert ListChallenge.call([1, -2, 3, 43, -5]) == 4
      assert ListChallenge.call([1, "banana", 3, "hmm", true, -5]) == 3
    end

    test "returns 0 if there are no odd numbers" do
      assert ListChallenge.call([2, 4, 6, 8, 10]) == 0
    end

    test "returns 0 if the list is empty" do
      assert ListChallenge.call([]) == 0
    end
  end
end
