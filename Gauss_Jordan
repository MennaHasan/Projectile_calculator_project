%old G_J

function S = Gauss_Jordan(A,B)
n = length(B);

%loop of the pivot
for k = 1:n
            %%this part is to do partial pivoting%%%
    max = abs(A(k,k));
    index = k;
    for s = k+1:n
        if abs(A(s,k))>max 
            max = abs(A(s,s));
            index = s;
        end
    end
    if index ~=k
       %swap in A
       tmp = A(k,:);
       A(k,:) = A(index,:);
       A(index,:) = tmp;
       
       %swap in B
       temp = B(k);
       B(k) = B(index);
       B(index) = temp;
       
    end
            %%partail pivoting part ends%%%

    %step of normalization
    B(k) = B(k)/A(k,k);
    A(k,:) = A(k,:)/A(k,k);   % do i need to make it A(k,k+1:end) = A(k,k+1:end)/A(k,k); ??? 
    
    %step of elimination
    for j = k+1:n % all cols starting from the pivot's row
        for i = 1:n
            if i ~=k
                A(i,j)=A(i,j)-(A(i,k)*A(k,j));
            end
        end
    end
    %modifying B
    for i = 1:n
        if i ~=k
            B(i) = B(i)- (A(i,k)*B(k));
        end
    end
    
end
S = B;

end
