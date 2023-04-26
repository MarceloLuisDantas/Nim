type
  ResultKind = enum Ok, Err
  Result = ref object
     case k: ResultKind
     of Ok: value: int
     of Err: err: string

var x = Result
echo x