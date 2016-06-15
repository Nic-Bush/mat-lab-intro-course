function [ Anext ] = NextGeneration( Anow, n )


Anext = zeros(n,n);

i=2;
while(i<(n))
    k=2;
    
    while (k <(n))
        
        window=zeros(9,1);
        inc = 1;
        for g=1:3
            for h=1:3
                window(inc)=Anow(i+g-2,k+h-2);
                inc=inc+1;
            end
        end
        A = sum(window);
        if (Anow(i,k) == 1 && A<3)
            Anext(i,k) =0 ;
        elseif (Anow(i,k) == 1 && (A==3 || A==4))
            Anext(i,k) = 1;
        elseif (Anow(i,k) == 1 && A>4)
            Anext(i,k) = 0;
        elseif (Anow(i,k)==0 && A==3)
            Anext(i,k) = 1;
        else Anext(i,k) = Anow(i,k);
        end
        
        
        
        
        k=k+1;
    end
    i=i+1;
end





i=1;
k=2;
while (k<n)
    for g=1:2
        window=zeros(6,1);
        inc=1;
        for h=1:3
            window(inc)=Anow(g,k+h-2);
            inc=inc+1;
        end
        
    end
    
    A = sum(window);
    if (Anow(i,k) == 1 && A<3)
        Anext(i,k) =0 ;
    elseif (Anow(i,k) == 1 && A==3 || A==4)
        Anext(i,k) = 1;
    elseif (Anow(i,k) == 1 && A>4)
        Anext(i,k) = 0;
    elseif (Anow(i,k)==0 && A==3)
        Anext(i,k) = 1;
    else Anext(i,k) = Anow(i,k);
    end
    
    
    k=k+1;
end

i=n;
k=2;
while(k<n)
    for g=i-1:i
        window=zeros(6,1);
        inc=1;
        for h=1:3
            window(inc)=Anow(g,k+h-2);
            inc=inc+1;
        end
        
    end
    A = sum(window);
    if (Anow(i,k) == 1 && A<3)
        Anext(i,k) =0 ;
    elseif (Anow(i,k) == 1 && A==3 || A==4)
        Anext(i,k) = 1;
    elseif (Anow(i,k) == 1 && A>4)
        Anext(i,k) = 0;
    elseif (Anow(i,k)==0 && A==3)
        Anext(i,k) = 1;
    else Anext(i,k) = Anow(i,k);
    end
    k=k+1;
end

k=1;
i=2;
while (i<n)
    for g=1:3
        window=zeros(6,1);
        inc=1;
        for h=1:2
            window(inc)=Anow(g+i-2,h);
            inc=inc+1;
        end
        
    end
    A = sum(window);
    if (Anow(i,k) == 1 && A<3)
        Anext(i,k) =0 ;
    elseif (Anow(i,k) == 1 && A==3 || A==4)
        Anext(i,k) = 1;
    elseif (Anow(i,k) == 1 && A>4)
        Anext(i,k) = 0;
    elseif (Anow(i,k)==0 && A==3)
        Anext(i,k) = 1;
    else Anext(i,k) = Anow(i,k);
    end
    i=i+1;
end

k=n;
i=2;

while (i<n)
    for g=1:3
        window=zeros(6,1);
        inc=1;
        for h=k-1:k
            window(inc)=Anow(g+i-2,h);
            inc=inc+1;
        end
        
    end
    A = sum(window);
    if (Anow(i,k) == 1 && A<3)
        Anext(i,k) =0 ;
    elseif (Anow(i,k) == 1 && A==3 || A==4)
        Anext(i,k) = 1;
    elseif (Anow(i,k) == 1 && A>4)
        Anext(i,k) = 0;
    elseif (Anow(i,k)==0 && A==3)
        Anext(i,k) = 1;
    else Anext(i,k) = Anow(i,k);
    end 
    i=i+1;
end


%for the courners...
i=1;
k=1;
while (i==1)
    for g=1:2
        window=zeros(4,1);
        inc=1;
        for h=1:2
            window(inc)=Anow(g,h);
            inc=inc+1;
        end
        
    end
    A = sum(window);
    if (Anow(i,k) == 1 && A<3)
        Anext(i,k) =0 ;
    elseif (Anow(i,k) == 1 && A==3 || A==4)
        Anext(i,k) = 1;
    elseif (Anow(i,k) == 1 && A>4)
        Anext(i,k) = 0;
    elseif (Anow(i,k)==0 && A==3)
        Anext(i,k) = 1;
    else Anext(i,k) = Anow(i,k);
    end
    i=i+1;
    
    
end


i=1;
k=n;
while (i==1)
    for g=1:2
        window=zeros(4,1);
        inc=1;
        for h=k-1:k
            window(inc)=Anow(g,h);
            inc=inc+1;
        end
        
    end
    A = sum(window);
    if (Anow(i,k) == 1 && A<3)
        Anext(i,k) =0 ;
    elseif (Anow(i,k) == 1 && A==3 || A==4)
        Anext(i,k) = 1;
    elseif (Anow(i,k) == 1 && A>4)
        Anext(i,k) = 0;
    elseif (Anow(i,k)==0 && A==3)
        Anext(i,k) = 1;
    else Anext(i,k) = Anow(i,k);
    end
    i=i+1;
    
    
end


i=n;
k=1;
while (i==n)
    for g=n-1:n
        window=zeros(4,1);
        inc=1;
        for h=1:2
            window(inc)=Anow(g,h);
            inc=inc+1;
        end
        
    end
    A = sum(window);
    if (Anow(i,k) == 1 && A<3)
        Anext(i,k) =0 ;
    elseif (Anow(i,k) == 1 && A==3 || A==4)
        Anext(i,k) = 1;
    elseif (Anow(i,k) == 1 && A>4)
        Anext(i,k) = 0;
    elseif (Anow(i,k)==0 && A==3)
        Anext(i,k) = 1;
    else Anext(i,k) = Anow(i,k);
    end
    i=i+1;
    
    
end

i=n;
k=n;
while (i==n)
    for g=n-1:n
        window=zeros(4,1);
        inc=1;
        for h=n-1:n
            window(inc)=Anow(g,h);
            inc=inc+1;
        end
        
    end
    A = sum(window);
    if (Anow(i,k) == 1 && A<3)
        Anext(i,k) =0 ;
    elseif (Anow(i,k) == 1 && A==3 || A==4)
        Anext(i,k) = 1;
    elseif (Anow(i,k) == 1 && A>4)
        Anext(i,k) = 0;
    elseif (Anow(i,k)==0 && A==3)
        Anext(i,k) = 1;
    else Anext(i,k) = Anow(i,k);
    end
    i=i+1;
    
    
end


end

