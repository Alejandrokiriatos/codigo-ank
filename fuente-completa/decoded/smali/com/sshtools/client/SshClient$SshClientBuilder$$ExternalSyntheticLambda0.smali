.class public final synthetic Lcom/sshtools/client/SshClient$SshClientBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;


# instance fields
.field public final synthetic f$0:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Optional;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/SshClient$SshClientBuilder$$ExternalSyntheticLambda0;->f$0:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder$$ExternalSyntheticLambda0;->f$0:Ljava/util/Optional;

    invoke-static {v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->lambda$withPassword$0(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
