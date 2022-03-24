contract main {




// =====================  Runtime code  =====================


#
#  - getRegistryInformation()
#
const EncodedCancel = ''

const ResolverEncoding = 'tuple(bytes32 preImage)', 0

const Name = '', 0

const StateEncoding = 32, 39, 0xfe7475706c652862797465733332206c6f636b486173682c2075696e7432353620657870697279, mem[167 len 25] >> 56, 0


function _fallback() payable {
    revert
}

function sub_94184ba9(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require ('cd', 36).length >= 64
    require ('cd', 4).length >= 128
    require cd[4] + 67 < cd[4] + ('cd', 4).length + 36
    require 100 <= ('cd', 4).length + 36
    idx = 0
    s = cd[4] + 36
    t = 480
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[4] + 131 < cd[4] + ('cd', 4).length + 36
    require ('cd', 4).length + 36 >= 164
    idx = 0
    s = cd[4] + 100
    t = 544
    while idx < 2:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not mem[480]:
        revert with 0, 'HashlockTransfer: ZER0_SENDER_BALANCE'
    if mem[512]:
        revert with 0, 'HashlockTransfer: NONZERO_RECIPIENT_BALANCE'
    if not ('cd', 36)[0]:
        revert with 0, 'HashlockTransfer: EMPTY_LOCKHASH'
    if ('cd', 36)[1]:
        if ('cd', 36)[1] <= block.timestamp:
            revert with 0, 'HashlockTransfer: EXPIRED_TIMELOCK'
    return 1
}

function sub_8ef98a7e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[160 len 64] = call.data[calldata.size len 64]
    mem[96] = 160
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[128] = 224
    mem[288] = 0
    mem[320] = 0
    require ('cd', 36).length >= 64
    mem[352] = ('cd', 36)[0]
    mem[384] = ('cd', 36)[1]
    mem[416] = 0
    require ('cd', 68).length >= 32
    mem[448] = ('cd', 68)[0]
    mem[544 len 64] = call.data[calldata.size len 64]
    mem[480] = 544
    mem[608 len 64] = call.data[calldata.size len 64]
    mem[512] = 608
    require ('cd', 4).length >= 128
    require cd[4] + 67 < cd[4] + ('cd', 4).length + 36
    require 100 <= ('cd', 4).length + 36
    idx = 0
    s = cd[4] + 36
    t = 736
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[672] = 736
    require cd[4] + 131 < cd[4] + ('cd', 4).length + 36
    mem[64] = 864
    require ('cd', 4).length + 36 >= 164
    idx = 0
    s = cd[4] + 100
    t = 800
    while idx < 2:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[704] = 800
    if not ('cd', 68)[0]:
        mem[864 len 64] = mem[736 len 64]
        idx = 0
        s = mem[64] + 64
        t = mem[704]
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len -mem[64] + 992
    if ('cd', 36)[1]:
        if ('cd', 36)[1] <= block.timestamp:
            revert with 0, 'HashlockTransfer: PAYMENT_EXPIRED'
    mem[896] = ('cd', 68)[0]
    mem[864] = 32
    hash = sha256hash(('cd', 68)[0]) 
    mem[928] = hash
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 928
    require return_data.size >= 32
    if hash != ('cd', 36)[0]:
        revert with 0, 'HashlockTransfer: INVALID_PREIMAGE'
    mem[768] = mem[736]
    mem[736] = 0
    mem[ceil32(return_data.size) + 928 len 64] = 0, mem[768]
    idx = 0
    s = mem[64] + 64
    t = mem[704]
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len ceil32(return_data.size) + -mem[64] + 1056
}



}
