.class public interface abstract Lcom/sshtools/client/tasks/AbstractOptimisedTask$ProgressMessages;
.super Ljava/lang/Object;
.source "AbstractOptimisedTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/AbstractOptimisedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressMessages"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public varargs error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p0, p1, p3}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$ProgressMessages;->message(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 93
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 94
    new-instance p3, Ljava/io/PrintWriter;

    const/4 v0, 0x1

    invoke-direct {p3, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 95
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$ProgressMessages;->message(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1, v0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$ProgressMessages;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs abstract message(Ljava/lang/String;[Ljava/lang/Object;)V
.end method
