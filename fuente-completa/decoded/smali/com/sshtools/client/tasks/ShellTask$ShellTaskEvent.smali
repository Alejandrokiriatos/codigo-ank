.class public interface abstract Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;
.super Ljava/lang/Object;
.source "ShellTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/ShellTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShellTaskEvent"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract shellEvent(Lcom/sshtools/client/tasks/ShellTask;Lcom/sshtools/client/SessionChannelNG;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
