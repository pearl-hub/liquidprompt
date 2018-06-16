
function post_install(){
    local giturl=https://github.com/nojhan/liquidprompt.git

    info "Installing or updating the ${PEARL_PKGNAME} git repository..."
    install_or_update_git_repo $giturl "${PEARL_PKGVARDIR}/liquidprompt" master

    apply "source \"$PEARL_PKGDIR/liquidpromptrc\"" $HOME/.liquidpromptrc
}

function post_update(){
    post_install
}

function pre_remove(){
    unapply "source \"$PEARL_PKGDIR/liquidpromptrc\"" $HOME/.liquidpromptrc

    rm -rf "${PEARL_PKGVARDIR}/liquidprompt"
}
