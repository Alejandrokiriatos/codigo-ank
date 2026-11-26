.class public interface abstract Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;
.super Ljava/lang/Object;
.source "CommandTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/CommandTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommandTaskEvent"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract commandEvent(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
