.class public final synthetic Lcom/sshtools/client/SshCompatibilityUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sshtools/client/SshClient$OnConfiguration;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sshtools/client/SshCompatibilityUtils$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Lcom/sshtools/client/SshClientContext;)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/sshtools/client/SshCompatibilityUtils$$ExternalSyntheticLambda1;->f$0:Z

    invoke-static {v0, p1}, Lcom/sshtools/client/SshCompatibilityUtils;->lambda$getRemoteClient$1(ZLcom/sshtools/client/SshClientContext;)V

    return-void
.end method
