function feat = pca_addLocScale(encOpts,Xdesc,Xloc)
    
    msk = [1 2 3 4] .* [encOpts.pca.addLoc encOpts.pca.addLoc encOpts.pca.addNorm encOpts.pca.addScale];
    msk(msk == 0) = [];
        
    if ~isempty(msk),
        feat = cat(1,Xdesc,Xloc(msk,:));
    else
        feat = Xdesc;
    end
end