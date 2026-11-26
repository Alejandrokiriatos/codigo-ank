.class public final synthetic Lcom/sshtools/client/PasswordAuthenticator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;


# instance fields
.field public final synthetic f$0:[C


# direct methods
.method public synthetic constructor <init>([C)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/PasswordAuthenticator$$ExternalSyntheticLambda2;->f$0:[C

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/PasswordAuthenticator$$ExternalSyntheticLambda2;->f$0:[C

    invoke-static {v0}, Lcom/sshtools/client/PasswordAuthenticator;->lambda$new$3([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
