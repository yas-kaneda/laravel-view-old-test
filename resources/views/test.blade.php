<form action="{{ route('search') }}">
    <input type="text" class="" id="input1", name="input1" value="{{ old('input1') }}">
    <input type="text" class="" id="input2", name="input2" value="{{ old('input2') }}">
    <input type="submit" value="検索">
</form>
{{ isset($state) ? $state : '' }}
