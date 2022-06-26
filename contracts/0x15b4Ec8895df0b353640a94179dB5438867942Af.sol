contract main {




// =====================  Runtime code  =====================


#
#  - sub_11479fea(?)
#  - sub_84b9bc3c(?)
#  - sub_ad32fa8c(?)
#  - sub_d623f982(?)
#
array of struct stor0;
address stor1;
uint256 stor2;
mapping of uint8 sub_a9a66108;

function sub_a9a66108(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if sub_a9a66108[arg1][arg2] >= 2:
        revert with 0, 33
    return sub_a9a66108[arg1][arg2]
}

function _fallback() payable {
    revert
}

function isFinished(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor0.length:
        revert with 0, 'Cashbag not found'
    if stor0[arg1].field_1280 > stor0[arg1].field_1792:
        if block.timestamp <= stor0[arg1].field_1024:
            return 0
    return 1
}

function sub_dae9cf0e(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536
}

function sub_07b3acf1(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function'
    stor2 = 0
    call msg.sender with:
       value stor2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to withdraw commission fee'
    else:
        if not ext_call.success:
            revert with 0, 'Failed to withdraw commission fee'
    ('bool', 'ext_call.success')
}

function sub_47820f91(?) {
    require calldata.size - 4 >= 32
    if sub_a9a66108[arg1][msg.sender] > 1:
        revert with 0, 33
    if sub_a9a66108[arg1][msg.sender] > 1:
        revert with 0, 33
    if sub_a9a66108[arg1][msg.sender] == 1:
        if arg1 >= stor0.length:
            revert with 0, 50
        idx = 0
        while idx < stor0[arg1].field_1792:
            mem[0] = (10 * arg1) + sha3(0) + 7
            if stor[sha3((10 * arg1) + ('name', 'stor0', 0) + 7) + idx].field_0 == msg.sender:
                if idx >= stor0[arg1].field_2048:
                    revert with 0, 50
                return stor[sha3((10 * arg1) + ('name', 'stor0', 0) + 8) + idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function sub_6438dd09(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor0.length:
        revert with 0, 'Cashbag ID out of bounds'
    if not stor0[arg1].field_1792:
        mem[(32 * stor0[arg1].field_1792) + 832] = stor0[arg1].field_2048
        if not stor0[arg1].field_2048:
            if not stor0[arg1].field_2304:
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 896] = 32
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 928] = stor0[arg1].field_0
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 960] = stor0[arg1].field_256
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 992] = stor0[arg1].field_512
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1024] = stor0[arg1].field_768
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1056] = stor0[arg1].field_1024
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1088] = stor0[arg1].field_1280
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1120] = stor0[arg1].field_1408
            else:
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896] = stor[sha3(('name', 'stor0', 0) + (10 * arg1) + 9)].field_0
                idx = (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896
                s = 0
                while (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 864 > idx:
                    mem[idx + 32] = stor[s + sha3(('name', 'stor0', 0) + (10 * arg1) + 9)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 896] = 32
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 928] = stor0[arg1].field_0
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 960] = stor0[arg1].field_256
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 992] = stor0[arg1].field_512
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1024] = stor0[arg1].field_768
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1056] = stor0[arg1].field_1024
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1088] = stor0[arg1].field_1280
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1120] = stor0[arg1].field_1280
        else:
            mem[(32 * stor0[arg1].field_1792) + 864] = stor[sha3(('name', 'stor0', 0) + (10 * arg1) + 8)].field_0
            idx = (32 * stor0[arg1].field_1792) + 864
            s = 0
            while (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 832 > idx:
                mem[idx + 32] = stor[s + sha3(('name', 'stor0', 0) + (10 * arg1) + 8)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor0[arg1].field_2304:
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896] = stor[sha3(('name', 'stor0', 0) + (10 * arg1) + 9)].field_0
                idx = (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896
                s = 0
                while (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 864 > idx:
                    mem[idx + 32] = stor[s + sha3(('name', 'stor0', 0) + (10 * arg1) + 9)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                s = 832
                t = (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1312
                while idx < stor0[arg1].field_1792:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1312] = stor0[arg1].field_2048
                mem[(64 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1344 len 32 * stor0[arg1].field_2048] = mem[(32 * stor0[arg1].field_1792) + 864 len 32 * stor0[arg1].field_2048]
                mem[(64 * stor0[arg1].field_1792) + (64 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1344] = stor0[arg1].field_2304
                mem[(64 * stor0[arg1].field_1792) + (64 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1376 len 32 * stor0[arg1].field_2304] = mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896 len 32 * stor0[arg1].field_2304]
                return 32, stor0[arg1].field_0, 
                       stor0[arg1].field_256,
                       stor0[arg1].field_512,
                       stor0[arg1].field_768,
                       stor0[arg1].field_1024,
                       stor0[arg1].field_1280,
                       stor0[arg1].field_1280,
                       stor0[arg1].field_1536,
                       352,
                       (32 * stor0[arg1].field_1792) + 384,
                       (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 416,
                       stor0[arg1].field_1792,
                       mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1312 len (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2304) + (32 * stor0[arg1].field_2048) + 64]
            mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 896] = 32
            mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 928] = stor0[arg1].field_0
            mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 960] = stor0[arg1].field_256
            mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 992] = stor0[arg1].field_512
            mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1024] = stor0[arg1].field_768
            mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1056] = stor0[arg1].field_1024
            mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1088] = stor0[arg1].field_1280
            mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1120] = stor0[arg1].field_1280
    else:
        mem[832] = stor[sha3(('name', 'stor0', 0) + (10 * arg1) + 7)].field_0
        idx = 832
        s = 0
        while (32 * stor0[arg1].field_1792) + 800 > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'stor0', 0) + (10 * arg1) + 7)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor0[arg1].field_1792) + 832] = stor0[arg1].field_2048
        if stor0[arg1].field_2048:
            mem[(32 * stor0[arg1].field_1792) + 864] = stor[sha3(('name', 'stor0', 0) + (10 * arg1) + 8)].field_0
            idx = (32 * stor0[arg1].field_1792) + 864
            s = 0
            while (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 832 > idx:
                mem[idx + 32] = stor[s + sha3(('name', 'stor0', 0) + (10 * arg1) + 8)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor0[arg1].field_2304:
                mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896] = stor[sha3(('name', 'stor0', 0) + (10 * arg1) + 9)].field_0
                idx = (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896
                s = 0
                while (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 864 > idx:
                    mem[idx + 32] = stor[s + sha3(('name', 'stor0', 0) + (10 * arg1) + 9)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            idx = 0
            s = 832
            t = (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1312
            while idx < stor0[arg1].field_1792:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1312] = stor0[arg1].field_2048
            mem[(64 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1344 len 32 * stor0[arg1].field_2048] = mem[(32 * stor0[arg1].field_1792) + 864 len 32 * stor0[arg1].field_2048]
            mem[(64 * stor0[arg1].field_1792) + (64 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1344] = stor0[arg1].field_2304
            mem[(64 * stor0[arg1].field_1792) + (64 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1376 len 32 * stor0[arg1].field_2304] = mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896 len 32 * stor0[arg1].field_2304]
            return 32, stor0[arg1].field_0, 
                   stor0[arg1].field_256,
                   stor0[arg1].field_512,
                   stor0[arg1].field_768,
                   stor0[arg1].field_1024,
                   stor0[arg1].field_1280,
                   stor0[arg1].field_1280,
                   stor0[arg1].field_1536,
                   352,
                   (32 * stor0[arg1].field_1792) + 384,
                   (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 416,
                   stor0[arg1].field_1792,
                   mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1312 len (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2304) + (32 * stor0[arg1].field_2048) + 64]
        if stor0[arg1].field_2304:
            mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896] = stor[sha3(('name', 'stor0', 0) + (10 * arg1) + 9)].field_0
            idx = (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896
            s = 0
            while (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 864 > idx:
                mem[idx + 32] = stor[s + sha3(('name', 'stor0', 0) + (10 * arg1) + 9)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            s = 832
            t = (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1312
            while idx < stor0[arg1].field_1792:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1312] = stor0[arg1].field_2048
            mem[(64 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1344 len 32 * stor0[arg1].field_2048] = mem[(32 * stor0[arg1].field_1792) + 864 len 32 * stor0[arg1].field_2048]
            mem[(64 * stor0[arg1].field_1792) + (64 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1344] = stor0[arg1].field_2304
            mem[(64 * stor0[arg1].field_1792) + (64 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1376 len 32 * stor0[arg1].field_2304] = mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896 len 32 * stor0[arg1].field_2304]
            return 32, stor0[arg1].field_0, 
                   stor0[arg1].field_256,
                   stor0[arg1].field_512,
                   stor0[arg1].field_768,
                   stor0[arg1].field_1024,
                   stor0[arg1].field_1280,
                   stor0[arg1].field_1280,
                   stor0[arg1].field_1536,
                   352,
                   (32 * stor0[arg1].field_1792) + 384,
                   (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 416,
                   stor0[arg1].field_1792,
                   mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1312 len (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2304) + (32 * stor0[arg1].field_2048) + 64]
        mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 896] = 32
        mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 928] = stor0[arg1].field_0
        mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 960] = stor0[arg1].field_256
        mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 992] = stor0[arg1].field_512
        mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1024] = stor0[arg1].field_768
        mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1056] = stor0[arg1].field_1024
        mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1088] = stor0[arg1].field_1280
        mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1120] = stor0[arg1].field_1280
    mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1152] = stor0[arg1].field_1536
    mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1184] = 352
    mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1280] = stor0[arg1].field_1792
    idx = 0
    s = 832
    t = (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1312
    while idx < stor0[arg1].field_1792:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1216] = (32 * stor0[arg1].field_1792) + 384
    mem[(64 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1312] = stor0[arg1].field_2048
    mem[(64 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1344 len 32 * stor0[arg1].field_2048] = mem[(32 * stor0[arg1].field_1792) + 864 len 32 * stor0[arg1].field_2048]
    mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1248] = (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 416
    mem[(64 * stor0[arg1].field_1792) + (64 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1344] = stor0[arg1].field_2304
    mem[(64 * stor0[arg1].field_1792) + (64 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 1376 len 32 * stor0[arg1].field_2304] = mem[(32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + 896 len 32 * stor0[arg1].field_2304]
    return memory
      from (32 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 896
       len (96 * stor0[arg1].field_1792) + (32 * stor0[arg1].field_2048) + (32 * stor0[arg1].field_2304) + 480
}



}
