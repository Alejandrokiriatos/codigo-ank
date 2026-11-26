.class public final synthetic Lcom/foxdebug/sftp/Sftp$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sshtools/client/SshClient$OnConfiguration;


# instance fields
.field public final synthetic f$0:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;


# direct methods
.method public synthetic constructor <init>(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$2$$ExternalSyntheticLambda0;->f$0:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/sshtools/client/SshClientContext;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$2$$ExternalSyntheticLambda0;->f$0:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    invoke-static {v0, p1}, Lcom/foxdebug/sftp/Sftp$2;->lambda$run$0(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lcom/sshtools/client/SshClientContext;)V

    return-void
.end method
