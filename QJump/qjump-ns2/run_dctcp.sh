# Copyright (c) 2015, Ionel Gog
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# * Neither the name of the project, the name of copyright holder nor the names 
#   of its contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#!/bin/bash
SIM_END=$1
LOAD=$2
CONNECTIONS_PER_PAIR=$3
CDF=$4
MEAN_FLOW_SIZE=$5

ENABLE_DCTCP=1
ENABLE_PFABRIC=0
ENABLE_QJUMP=0

# Changeable
ENABLE_MULTI_PATH=1
PER_FLOW_MP=0
SOURCE_ALG=DCTCP-Sack
MIN_RTO=0.000200
DROP_PRIO=false
DEQUE_PRIO=false
DCTCP_K=15
QUEUE_SIZE=150

# Common
LINK_RATE=10
MEAN_LINK_DELAY=0.0000002
HOST_DELAY=0.0000025
PARETO_SHAPE=1.05
ACK_RATIO=1
SLOW_START_RESTART=true
DCTCP_G=0.0625
SWITCH_ALG=RED
ENABLE_PQ=0
PQ_MODE=0
PQ_GAMMA=0
PQ_THRESH=0
ENABLE_PACER=0
TBFS_PER_SERVER=1
PACER_QLENGTH_FACTOR=3000
PACER_RATE_AVE_FACTOR=0.125
PACER_RATE_UPDATE_INTERVAL=0.0000072
PACER_ASSOC_PROB=0.125
PACER_ASSOC_TIMEOUT=0.001
TOPOLOGY_SPT=16
TOPOLOGY_TORS=9
TOPOLOGY_SPINES=4
TOPOLOGY_X=1
ENABLE_NAM=0
PRIO_SCHEME=2
PROB_CAP=5
KEEP_ORDER=false

echo "ns qjump.tcl $SIM_END $LINK_RATE $MEAN_LINK_DELAY $HOST_DELAY $QUEUE_SIZE $LOAD $CONNECTIONS_PER_PAIR $MEAN_FLOW_SIZE $PARETO_SHAPE $ENABLE_MULTI_PATH $PER_FLOW_MP $SOURCE_ALG $ACK_RATIO $SLOW_START_RESTART $DCTCP_G $SWITCH_ALG $DCTCP_K $ENABLE_PQ $PQ_MODE $PQ_GAMMA $PQ_THRESH $ENABLE_PACER $TBFS_PER_SERVER $PACER_QLENGTH_FACTOR $PACER_RATE_AVE_FACTOR $PACER_RATE_UPDATE_INTERVAL $PACER_ASSOC_PROB $PACER_ASSOC_TIMEOUT $TOPOLOGY_SPT $TOPOLOGY_TORS $TOPOLOGY_SPINES $TOPOLOGY_X $ENABLE_NAM $MIN_RTO $DROP_PRIO $PRIO_SCHEME $DEQUE_PRIO $PROB_CAP $KEEP_ORDER $ENABLE_DCTCP $ENABLE_PFABRIC $ENABLE_QJUMP"

ns qjump.tcl $SIM_END $LINK_RATE $MEAN_LINK_DELAY $HOST_DELAY $QUEUE_SIZE $LOAD $CONNECTIONS_PER_PAIR $MEAN_FLOW_SIZE $PARETO_SHAPE $ENABLE_MULTI_PATH $PER_FLOW_MP $SOURCE_ALG $ACK_RATIO $SLOW_START_RESTART $DCTCP_G $SWITCH_ALG $DCTCP_K $ENABLE_PQ $PQ_MODE $PQ_GAMMA $PQ_THRESH $ENABLE_PACER $TBFS_PER_SERVER $PACER_QLENGTH_FACTOR $PACER_RATE_AVE_FACTOR $PACER_RATE_UPDATE_INTERVAL $PACER_ASSOC_PROB $PACER_ASSOC_TIMEOUT $TOPOLOGY_SPT $TOPOLOGY_TORS $TOPOLOGY_SPINES $TOPOLOGY_X $ENABLE_NAM $MIN_RTO $DROP_PRIO $PRIO_SCHEME $DEQUE_PRIO $PROB_CAP $KEEP_ORDER $ENABLE_DCTCP $ENABLE_PFABRIC $ENABLE_QJUMP $CDF
