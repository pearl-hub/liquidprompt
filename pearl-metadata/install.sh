
post_install() {
    apply "source \"$PEARL_PKGDIR/liquidpromptrc\"" $HOME/.liquidpromptrc
}

pre_remove() {
    unapply "source \"$PEARL_PKGDIR/liquidpromptrc\"" $HOME/.liquidpromptrc
}
