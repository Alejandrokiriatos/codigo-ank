.class public interface abstract Lcom/sshtools/common/events/EventService;
.super Ljava/lang/Object;
.source "EventService.java"


# virtual methods
.method public abstract addListener(Lcom/sshtools/common/events/EventListener;)V
.end method

.method public abstract fireEvent(Lcom/sshtools/common/events/Event;)V
.end method

.method public abstract getEventName(Ljava/lang/Integer;)Ljava/lang/String;
.end method

.method public abstract registerEventCodeDescriptor(Ljava/lang/Class;)V
.end method

.method public abstract removeListener(Lcom/sshtools/common/events/EventListener;)V
.end method
