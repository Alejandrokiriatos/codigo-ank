.class public final synthetic Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda5;->f$0:Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda5;->f$0:Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;

    invoke-static {v0}, Lcom/sshtools/client/shell/ExpectShell;->lambda$new$3(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
