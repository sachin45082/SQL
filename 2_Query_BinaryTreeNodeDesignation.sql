select distinct a.N,
    case
        when a.P is null then "Root"
        when b.P is null then "Leaf"
        else "Inner"
    end
    from BST as a
        left join BST as b 
        on a.N = b.P
    order by a.N