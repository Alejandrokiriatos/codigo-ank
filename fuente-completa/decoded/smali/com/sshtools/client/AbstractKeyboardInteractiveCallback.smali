.class public abstract Lcom/sshtools/client/AbstractKeyboardInteractiveCallback;
.super Ljava/lang/Object;
.source "AbstractKeyboardInteractiveCallback.java"

# interfaces
.implements Lcom/sshtools/client/KeyboardInteractiveCallback;


# instance fields
.field protected connection:Lcom/sshtools/common/ssh/SshConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sshtools/client/AbstractKeyboardInteractiveCallback;->connection:Lcom/sshtools/common/ssh/SshConnection;

    return-void
.end method
