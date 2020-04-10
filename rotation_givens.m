function [Q,R] = rotation_givens(A)
  [m,n] = size(A);
  Q = eye(m);
  R = A;

  for j = 3
    for i = 2
      G = eye(m);
      [c,s] = givens_rotation( R(i-1,j),R(i,j) );
      G([i-1, i],[i-1, i]) = [c -s; s c];
      disp(G)
      R = G'*R;
      disp(R)
    end
  end

end