.class public Lcom/sshtools/common/events/EventServiceImplementation;
.super Ljava/lang/Object;
.source "EventServiceImplementation.java"

# interfaces
.implements Lcom/sshtools/common/events/EventService;


# static fields
.field private static INSTANCE:Lcom/sshtools/common/events/EventService;

.field private static got:Z

.field private static gotStack:[Ljava/lang/StackTraceElement;


# instance fields
.field cachedEventNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected eventCodeDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected globalListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/events/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field processAllEventsOnEventException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/sshtools/common/events/EventServiceImplementation;

    invoke-direct {v0}, Lcom/sshtools/common/events/EventServiceImplementation;-><init>()V

    sput-object v0, Lcom/sshtools/common/events/EventServiceImplementation;->INSTANCE:Lcom/sshtools/common/events/EventService;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/events/EventServiceImplementation;->globalListeners:Ljava/util/Collection;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/sshtools/common/events/EventCodes;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 56
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sshtools/common/events/EventServiceImplementation;->eventCodeDescriptors:Ljava/util/List;

    .line 57
    iput-boolean v3, p0, Lcom/sshtools/common/events/EventServiceImplementation;->processAllEventsOnEventException:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/events/EventServiceImplementation;->cachedEventNames:Ljava/util/Map;

    .line 63
    :try_start_0
    const-string v0, "com.sshtools.common.events.EventCodes"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/events/EventServiceImplementation;->registerEventCodeDescriptor(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getInstance()Lcom/sshtools/common/events/EventService;
    .locals 1

    .line 96
    sget-boolean v0, Lcom/sshtools/common/events/EventServiceImplementation;->got:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 97
    sput-boolean v0, Lcom/sshtools/common/events/EventServiceImplementation;->got:Z

    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/events/EventServiceImplementation;->gotStack:[Ljava/lang/StackTraceElement;

    .line 100
    :cond_0
    sget-object v0, Lcom/sshtools/common/events/EventServiceImplementation;->INSTANCE:Lcom/sshtools/common/events/EventService;

    return-object v0
.end method

.method protected static setInstance(Lcom/sshtools/common/events/EventService;)V
    .locals 5

    .line 74
    sget-boolean v0, Lcom/sshtools/common/events/EventServiceImplementation;->got:Z

    if-eqz v0, :cond_2

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    sget-object v0, Lcom/sshtools/common/events/EventServiceImplementation;->gotStack:[Ljava/lang/StackTraceElement;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0xa

    .line 78
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/sshtools/common/events/EventServiceImplementation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setInstance() must be called before the first getInstace() which was called from :-\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    sput-object p0, Lcom/sshtools/common/events/EventServiceImplementation;->INSTANCE:Lcom/sshtools/common/events/EventService;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/sshtools/common/events/EventListener;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sshtools/common/events/EventServiceImplementation;->globalListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fireEvent(Lcom/sshtools/common/events/Event;)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 143
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/sshtools/common/events/Event;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/events/EventServiceImplementation;->getEventName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sshtools/common/events/Event;->getState()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    :goto_0
    invoke-virtual {p1}, Lcom/sshtools/common/events/Event;->logAttributes()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Firing {} success={} {}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_2
    const-string v0, "CONNECTION"

    invoke-virtual {p1, v0}, Lcom/sshtools/common/events/Event;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 148
    instance-of v1, v0, Lcom/sshtools/common/events/EventTrigger;

    if-eqz v1, :cond_3

    .line 150
    check-cast v0, Lcom/sshtools/common/events/EventTrigger;

    invoke-interface {v0, p1}, Lcom/sshtools/common/events/EventTrigger;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/sshtools/common/events/EventServiceImplementation;->globalListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/events/EventListener;

    .line 157
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sshtools/common/events/EventListener;->processEvent(Lcom/sshtools/common/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 159
    instance-of v3, v2, Lcom/sshtools/common/events/EventException;

    if-eqz v3, :cond_6

    .line 160
    check-cast v2, Lcom/sshtools/common/events/EventException;

    .line 161
    iget-boolean v1, p0, Lcom/sshtools/common/events/EventServiceImplementation;->processAllEventsOnEventException:Z

    if-eqz v1, :cond_5

    move-object v1, v2

    goto :goto_1

    .line 162
    :cond_5
    throw v2

    .line 165
    :cond_6
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 166
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Caught exception from event listener"

    invoke-static {v4, v2, v3}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 172
    :cond_7
    iget-boolean p1, p0, Lcom/sshtools/common/events/EventServiceImplementation;->processAllEventsOnEventException:Z

    if-eqz p1, :cond_9

    if-nez v1, :cond_8

    goto :goto_2

    .line 173
    :cond_8
    throw v1

    :cond_9
    :goto_2
    return-void
.end method

.method public getEventName(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 7

    .line 109
    iget-object v0, p0, Lcom/sshtools/common/events/EventServiceImplementation;->cachedEventNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sshtools/common/events/EventServiceImplementation;->cachedEventNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/events/EventServiceImplementation;->eventCodeDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 115
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 116
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    .line 118
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 119
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 120
    iget-object v5, p0, Lcom/sshtools/common/events/EventServiceImplementation;->cachedEventNames:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public registerEventCodeDescriptor(Ljava/lang/Class;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sshtools/common/events/EventServiceImplementation;->eventCodeDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/sshtools/common/events/EventListener;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sshtools/common/events/EventServiceImplementation;->globalListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setProcessAllEventsOnEventException(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/sshtools/common/events/EventServiceImplementation;->processAllEventsOnEventException:Z

    return-void
.end method
