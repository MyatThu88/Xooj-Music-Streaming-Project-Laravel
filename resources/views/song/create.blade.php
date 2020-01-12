@extends('backend.dashboard')
@section('content')

<!DOCTYPE html>
<html>
<head>
	<title>Show Table</title>
</head>
<body>
	<div class="container justify-content-center">
	<h3 class="text-center">Song Add Form</h3>

  @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
  @endif

	<form method="post" action="{{route('song.store')}}" enctype="multipart/form-data">
    @csrf
  <div class="form-group">
    <label for="exampleInputEmail1">Title</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Title" name="title">
    <span class="text-danger">{{ $errors->first('title') }}</span>
  </div>

  <div class="form-group">
    <label>Artist</label>
    <select name="artist" class="form-control">
      <option value="">Choose Artist</option>
      {-- accept data and loop --}
      @foreach($artists as $row)
      <option value="{{$row->id}}">{{$row->name}}</option>
      @endforeach
    </select>
    <span class="text-danger">{{ $errors->first('artist') }}</span>
  </div>

  <div class="form-group">
    <label>Album</label>
    <select name="album" class="form-control">
      <option value="">Choose Album</option>
      {-- accept data and loop --}
      @foreach($albums as $row)
      <option value="{{$row->id}}">{{$row->title}}</option>
      @endforeach
    </select>
    <span class="text-danger">{{ $errors->first('album') }}</span>
  </div>

  <div class="form-group">
    <label>Genre</label>
    <select name="genre" class="form-control">
      <option value="">Choose Genre Type</option>
      {-- accept data and loop --}
      @foreach($genres as $row)
      <option value="{{$row->id}}">{{$row->name}}</option>
      @endforeach
    </select>
    <span class="text-danger">{{ $errors->first('artist') }}</span>
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Duration</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Title" name="duration" placeholder="eg.4:00">
    <span class="text-danger">{{ $errors->first('duration') }}</span>
  </div>

  <div class="form-group">
    <label for="exampleInputPassword1">Song
      <span class="text-danger">[support file types:mp3]</span>
      <span class="text-danger">{{ $errors->first('path') }}</span>
    </label>
    <input type="file" name="path">
  </div>
  <input type="submit" name="btnsubmit" value="Save" class="btn-primary">
</form>
</div>

</body>
</html>

@endsection