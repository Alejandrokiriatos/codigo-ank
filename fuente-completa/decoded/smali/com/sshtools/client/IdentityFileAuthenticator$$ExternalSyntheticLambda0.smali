.class public final synthetic Lcom/sshtools/client/IdentityFileAuthenticator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/nio/file/PathMatcher;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/PathMatcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/IdentityFileAuthenticator$$ExternalSyntheticLambda0;->f$0:Ljava/nio/file/PathMatcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator$$ExternalSyntheticLambda0;->f$0:Ljava/nio/file/PathMatcher;

    check-cast p1, Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method
