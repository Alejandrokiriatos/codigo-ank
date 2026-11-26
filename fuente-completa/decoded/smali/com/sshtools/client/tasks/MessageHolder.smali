.class public Lcom/sshtools/client/tasks/MessageHolder;
.super Ljava/lang/Object;
.source "MessageHolder.java"


# instance fields
.field public msg:Lcom/sshtools/client/tasks/Message;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sshtools/client/tasks/MessageHolder;->msg:Lcom/sshtools/client/tasks/Message;

    return-void
.end method
