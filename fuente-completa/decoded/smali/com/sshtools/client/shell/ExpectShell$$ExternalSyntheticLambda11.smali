.class public final synthetic Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/shell/ExpectShell;

.field public final synthetic f$1:Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/shell/ExpectShell;Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda11;->f$0:Lcom/sshtools/client/shell/ExpectShell;

    iput-object p2, p0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda11;->f$1:Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda11;->f$0:Lcom/sshtools/client/shell/ExpectShell;

    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda11;->f$1:Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;

    invoke-virtual {v0, v1}, Lcom/sshtools/client/shell/ExpectShell;->lambda$new$4$com-sshtools-client-shell-ExpectShell(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Lcom/sshtools/client/shell/ExpectShell$OS;

    move-result-object v0

    return-object v0
.end method
