.class public final synthetic Lcom/sshtools/client/PrivateKeyFileAuthenticator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sshtools/client/PassphrasePrompt;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPasshrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
