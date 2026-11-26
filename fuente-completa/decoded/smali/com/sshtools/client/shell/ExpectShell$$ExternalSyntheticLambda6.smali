.class public final synthetic Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/shell/ExpectShell;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/shell/ExpectShell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda6;->f$0:Lcom/sshtools/client/shell/ExpectShell;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda6;->f$0:Lcom/sshtools/client/shell/ExpectShell;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/shell/ExpectShell;->determineServerType(Ljava/lang/String;)Lcom/sshtools/client/shell/ExpectShell$OS;

    move-result-object p1

    return-object p1
.end method
