contract main {




// =====================  Runtime code  =====================


#
#  - sub_84b9bc3c(?)
#
array of struct stor0;
mapping of struct sub_a9a66108;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702950;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702951;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702952;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702953;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702954;

function sub_a9a66108(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if uint8(sub_a9a66108[arg1][arg2].field_0) >= 3:
        revert with 0, 33
    return uint8(sub_a9a66108[arg1][arg2].field_0), uint256(sub_a9a66108[arg1][arg2].field_256)
}

function _fallback() payable {
    revert
}

function sub_b5e30749(?) {
    require calldata.size - 4 >= 32
    if uint8(sub_a9a66108[arg1][msg.sender].field_0) > 2:
        revert with 0, 33
    if uint8(sub_a9a66108[arg1][msg.sender].field_0) > 2:
        revert with 0, 33
    return (uint8(sub_a9a66108[arg1][msg.sender].field_0) == 2)
}

function sub_a1c6e1ec(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor0.length:
        revert with 0, 'Cashbag not found'
    if uint128(stor0[arg1].field_768) > uint256(stor0[arg1].field_1280):
        if block.timestamp <= uint256(stor0[arg1].field_1024):
            return 0
    return 1
}

function sub_72026ab2(?) {
    require calldata.size - 4 >= 64
    if arg1 >= stor0.length:
        revert with 0, 'Cashbag not found'
    if msg.sender == address(stor0[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner cannot join their own cashbag'
    if uint8(sub_a9a66108[arg1][msg.sender].field_0) > 2:
        revert with 0, 33
    if uint8(sub_a9a66108[arg1][msg.sender].field_0) == 1:
        revert with 0, 'Already joined'
    if arg1 >= stor0.length:
        revert with 0, 'Cashbag not found'
    if uint128(stor0[arg1].field_768) <= uint256(stor0[arg1].field_1280):
        revert with 0, 'No more participants allowed'
    if block.timestamp > uint256(stor0[arg1].field_1024):
        revert with 0, 'No more participants allowed'
    uint256(sub_a9a66108[arg1][msg.sender].field_256) = arg2
    uint8(sub_a9a66108[arg1][msg.sender].field_0) = 1
    uint256(stor0[arg1].field_1280)++
    uint256(stor[uint256(stor0[arg1].field_1280) + sha3((8 * arg1) + ('name', 'stor0', 0) + 5)].field_0) = msg.sender or Mask(96, 160, uint256(stor[uint256(stor0[arg1].field_1280) + sha3((8 * arg1) + ('name', 'stor0', 0) + 5)].field_0))
    emit 0x7dd8cb04: arg1, msg.sender
}

function sub_e802a277(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint64(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if uint64(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need to have at least one participant'
    mem[256] = 96
    mem[192] = uint64(arg1)
    mem[160] = msg.value
    mem[128] = msg.value
    mem[352] = arg2.length
    mem[384 len arg2.length] = arg2[all]
    mem[arg2.length + 384] = 0
    mem[320] = 352
    if block.timestamp > !arg4:
        revert with 0, 17
    mem[224] = block.timestamp + arg4
    mem[288] = arg3
    stor0.length++
    address(stor0[stor0.length].field_0) = msg.sender
    stor290D[stor0.length] = msg.value
    stor290D[stor0.length] = msg.value
    uint64(stor290D[stor0.length].field_0) = uint64(arg1)
    uint64(stor290D[stor0.length].field_64) = 0
    stor290D[stor0.length] = block.timestamp + arg4
    stor290D[stor0.length] = msg.sender
    if not msg.sender:
        idx = 0
        while stor290D[stor0.length] > idx:
            uint256(stor[idx + sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * msg.sender) + 128 > idx:
            address(stor[s + sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * msg.sender) + 31) >> 5
        while stor290D[stor0.length] > idx:
            uint256(stor[idx + sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568)]) = 0
            idx = idx + 1
            continue 
    stor290D[stor0.length] = arg3
    if bool(stor290D[stor0.length].field_0):
        if bool(stor290D[stor0.length].field_0) == uint255(uint256(stor290D[stor0.length].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56a)][]) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor290D[stor0.length].field_0) = 0
            idx = 0
            while (uint255(uint256(stor290D[stor0.length].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[idx + sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56a)]) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor290D[stor0.length].field_0) == stor290D[stor0.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56a)][]) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor290D[stor0.length].field_0) = 0
            idx = 0
            while stor290D[stor0.length].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56a)]) = 0
                idx = idx + 1
                continue 
    if stor0.length < 1:
        revert with 0, 17
    mem[ceil32(arg2.length) + 384] = stor0.length - 1
    mem[ceil32(arg2.length) + 416] = msg.sender
    emit 0x8396060a: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 416 len -arg2.length + ceil32(arg2.length) + 32]
}

function sub_dae9cf0e(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    if bool(stor0[arg1].field_1792):
        if bool(stor0[arg1].field_1792) == uint255(uint256(stor0[arg1].field_1792)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0[arg1].field_1792):
            if bool(stor0[arg1].field_1792) == uint255(uint256(stor0[arg1].field_1792)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor0[arg1].field_1792)):
                if 31 >= uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor0[arg1].field_1800)
                else:
                    mem[128] = uint256(stor[sha3((8 * arg1) + ('name', 'stor0', 0) + 7)].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'stor0', 0) + 7)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor0[arg1].field_1792) == stor0[arg1].field_1793 % 128 < 32:
                revert with 0, 34
            if stor0[arg1].field_1793 % 128:
                if 31 >= stor0[arg1].field_1793 % 128:
                    mem[128] = 256 * Mask(248, 0, stor0[arg1].field_1800)
                else:
                    mem[128] = uint256(stor[sha3((8 * arg1) + ('name', 'stor0', 0) + 7)].field_0)
                    idx = 128
                    s = 0
                    while stor0[arg1].field_1793 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'stor0', 0) + 7)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor0[arg1].field_0), 
               uint256(stor0[arg1].field_256),
               uint256(stor0[arg1].field_512),
               uint128(stor0[arg1].field_768),
               uint256(stor0[arg1].field_1024),
               uint256(stor0[arg1].field_1536),
               Array(len=2 * Mask(256, -1, uint256(stor0[arg1].field_1792)), data=mem[128 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)])
    if bool(stor0[arg1].field_1792) == stor0[arg1].field_1793 % 128 < 32:
        revert with 0, 34
    if bool(stor0[arg1].field_1792):
        if bool(stor0[arg1].field_1792) == uint255(uint256(stor0[arg1].field_1792)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor0[arg1].field_1792)):
            if 31 >= uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor0[arg1].field_1800)
            else:
                mem[128] = uint256(stor[sha3((8 * arg1) + ('name', 'stor0', 0) + 7)].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'stor0', 0) + 7)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor0[arg1].field_1792) == stor0[arg1].field_1793 % 128 < 32:
            revert with 0, 34
        if stor0[arg1].field_1793 % 128:
            if 31 >= stor0[arg1].field_1793 % 128:
                mem[128] = 256 * Mask(248, 0, stor0[arg1].field_1800)
            else:
                mem[128] = uint256(stor[sha3((8 * arg1) + ('name', 'stor0', 0) + 7)].field_0)
                idx = 128
                s = 0
                while stor0[arg1].field_1793 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'stor0', 0) + 7)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor0[arg1].field_0), 
           uint256(stor0[arg1].field_256),
           uint256(stor0[arg1].field_512),
           uint128(stor0[arg1].field_768),
           uint256(stor0[arg1].field_1024),
           uint256(stor0[arg1].field_1536),
           Array(len=stor0[arg1].field_1792 % 128, data=mem[128 len ceil32(stor0[arg1].field_1793 % 128)])
}

function sub_4f5a566d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if arg1 >= stor0.length:
        revert with 0, 'Cashbag not found'
    if uint128(stor0[arg1].field_768) > uint256(stor0[arg1].field_1280):
        if block.timestamp <= uint256(stor0[arg1].field_1024):
            if uint8(sub_a9a66108[arg1][msg.sender].field_0) > 2:
                revert with 0, 33
            if uint8(sub_a9a66108[arg1][msg.sender].field_0) != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Participant must join this cashbag first OR has claimed cashbag'
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cashbag is still accepting new users'
    if uint8(sub_a9a66108[arg1][msg.sender].field_0) > 2:
        revert with 0, 33
    if uint8(sub_a9a66108[arg1][msg.sender].field_0) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Participant must join this cashbag first OR has claimed cashbag'
    mem[128] = msg.sender
    mem[160] = 64
    mem[192] = arg2.length
    mem[224 len arg2.length] = arg2[all]
    mem[96] = ceil32(arg2.length) + 96
    if sha3(msg.sender, Array(len=arg2.length, data=arg2[all])) != uint256(sub_a9a66108[arg1][msg.sender].field_256):
        revert with 0, 'Committed passphrase does not match'
    mem[ceil32(arg2.length) + 256] = 64
    if bool(stor0[arg1].field_1792):
        if bool(stor0[arg1].field_1792) == uint255(uint256(stor0[arg1].field_1792)) * 0.5 < 32:
            revert with 0, 34
        mem[ceil32(arg2.length) + 320] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
        if not bool(stor0[arg1].field_1792):
            mem[ceil32(arg2.length) + 352] = Mask(248, 8, uint256(stor0[arg1].field_1792))
            mem[ceil32(arg2.length) + 288] = 128
            mem[ceil32(arg2.length) + 384] = arg2.length
            mem[ceil32(arg2.length) + 416 len arg2.length] = arg2[all]
            mem[arg2.length + ceil32(arg2.length) + 416] = 0
            mem[ceil32(arg2.length) + 224] = ceil32(arg2.length) + 160
            if sha3(mem[ceil32(arg2.length) + 256 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 256 len -arg2.length + ceil32(arg2.length)]]) != uint256(stor0[arg1].field_1536):
                mem[(2 * ceil32(arg2.length)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg2.length)) + 420] = 32
                mem[(2 * ceil32(arg2.length)) + 452] = 16
                mem[(2 * ceil32(arg2.length)) + 484] = 'Wrong passphrase'
                revert with memory
                  from (2 * ceil32(arg2.length)) + 416
                   len ceil32(arg2.length) + 100
            uint8(sub_a9a66108[arg1][msg.sender].field_0) = 2
            if arg1 >= stor0.length:
                revert with 0, 50
            if not uint128(stor0[arg1].field_768):
                revert with 0, 18
            if uint256(stor0[arg1].field_512) < uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768):
                revert with 0, 17
            uint256(stor0[arg1].field_512) -= uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
            call msg.sender with:
               value uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768) wei
                 gas gas_remaining wei
            if not return_data.size:
                if ext_call.success:
                    mem[(2 * ceil32(arg2.length)) + 416] = arg1
                    mem[(2 * ceil32(arg2.length)) + 448] = uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
                    mem[(2 * ceil32(arg2.length)) + 480] = msg.sender
                    emit 0x7ffa8df2: mem[(2 * ceil32(arg2.length)) + 416 len ceil32(arg2.length) + 96]
                mem[(2 * ceil32(arg2.length)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg2.length)) + 420] = 32
                mem[(2 * ceil32(arg2.length)) + 452] = 20
                mem[(2 * ceil32(arg2.length)) + 484] = 'Ether failed to sent'
                revert with memory
                  from (2 * ceil32(arg2.length)) + 416
                   len ceil32(arg2.length) + 100
            mem[(2 * ceil32(arg2.length)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 417] = arg1
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 449] = uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
                mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 481] = msg.sender
                emit 0x7ffa8df2: mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 417 len ceil32(arg2.length) + 96]
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 421] = 32
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 453] = 20
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 485] = 'Ether failed to sent'
            revert with memory
              from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 417
               len ceil32(arg2.length) + 100
        if bool(stor0[arg1].field_1792) != 1:
            mem[ceil32(arg2.length) + 288] = -ceil32(arg2.length) - 256
            mem[ceil32(arg2.length) + 224] = -224
            mem[64] = ceil32(arg2.length) + 32
            if sha3(mem[ceil32(arg2.length) + 256 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 256 len -arg2.length + ceil32(arg2.length)]]) != uint256(stor0[arg1].field_1536):
                revert with 0, 'Wrong passphrase'
            uint8(sub_a9a66108[arg1][msg.sender].field_0) = 2
            if arg1 >= stor0.length:
                revert with 0, 50
            if not uint128(stor0[arg1].field_768):
                revert with 0, 18
            if uint256(stor0[arg1].field_512) < uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768):
                revert with 0, 17
            uint256(stor0[arg1].field_512) -= uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
            call msg.sender with:
               value uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Ether failed to sent'
            if return_data.size:
                emit 0x7ffa8df2: arg1, uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768), msg.sender
            else:
                mem[ceil32(arg2.length) + 32] = arg1
                mem[ceil32(arg2.length) + 64] = uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
                emit 0x7ffa8df2: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 64 len ceil32(arg2.length) + -arg2.length + 32], msg.sender
        idx = 0
        s = 0
        while idx < uint255(uint256(stor0[arg1].field_1792)) * 0.5:
            mem[idx + ceil32(arg2.length) + 352] = uint256(stor[s + sha3((8 * arg1) + ('name', 'stor0', 0) + 7)].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg2.length) + 288] = ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 96
        mem[ceil32(arg2.length) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 352] = arg2.length
        mem[ceil32(arg2.length) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 384 len arg2.length] = arg2[all]
        mem[arg2.length + ceil32(arg2.length) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 384] = 0
        mem[ceil32(arg2.length) + 224] = ceil32(arg2.length) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 128
        if sha3(mem[ceil32(arg2.length) + 256 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 256 len -arg2.length + ceil32(arg2.length)]]) != uint256(stor0[arg1].field_1536):
            mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 388] = 32
            mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 420] = 16
            mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 452] = 'Wrong passphrase'
            revert with memory
              from (2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 384
               len ceil32(arg2.length) + 100
        uint8(sub_a9a66108[arg1][msg.sender].field_0) = 2
        if arg1 >= stor0.length:
            revert with 0, 50
        if not uint128(stor0[arg1].field_768):
            revert with 0, 18
        if uint256(stor0[arg1].field_512) < uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768):
            revert with 0, 17
        uint256(stor0[arg1].field_512) -= uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
        call msg.sender with:
           value uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768) wei
             gas gas_remaining wei
        if not return_data.size:
            if ext_call.success:
                mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 384] = arg1
                mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 416] = uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
                mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 448] = msg.sender
                emit 0x7ffa8df2: mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 384 len ceil32(arg2.length) + 96]
            mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 388] = 32
            mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 420] = 20
            mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 452] = 'Ether failed to sent'
            revert with memory
              from (2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 384
               len ceil32(arg2.length) + 100
        mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + ceil32(return_data.size) + 385] = arg1
            mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + ceil32(return_data.size) + 417] = uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
            mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + ceil32(return_data.size) + 449] = msg.sender
            emit 0x7ffa8df2: mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + ceil32(return_data.size) + 385 len ceil32(arg2.length) + 96]
        mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + ceil32(return_data.size) + 385] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + ceil32(return_data.size) + 389] = 32
        mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + ceil32(return_data.size) + 421] = 20
        mem[(2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + ceil32(return_data.size) + 453] = 'Ether failed to sent'
        revert with memory
          from (2 * ceil32(arg2.length)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + ceil32(return_data.size) + 385
           len ceil32(arg2.length) + 100
    if bool(stor0[arg1].field_1792) == stor0[arg1].field_1793 % 128 < 32:
        revert with 0, 34
    mem[ceil32(arg2.length) + 320] = stor0[arg1].field_1793 % 128
    if not bool(stor0[arg1].field_1792):
        mem[ceil32(arg2.length) + 352] = Mask(248, 8, uint256(stor0[arg1].field_1792))
        mem[ceil32(arg2.length) + 288] = 128
        mem[ceil32(arg2.length) + 384] = arg2.length
        mem[ceil32(arg2.length) + 416 len arg2.length] = arg2[all]
        mem[arg2.length + ceil32(arg2.length) + 416] = 0
        mem[ceil32(arg2.length) + 224] = ceil32(arg2.length) + 160
        if sha3(mem[ceil32(arg2.length) + 256 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 256 len -arg2.length + ceil32(arg2.length)]]) != uint256(stor0[arg1].field_1536):
            mem[(2 * ceil32(arg2.length)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(arg2.length)) + 420] = 32
            mem[(2 * ceil32(arg2.length)) + 452] = 16
            mem[(2 * ceil32(arg2.length)) + 484] = 'Wrong passphrase'
            revert with memory
              from (2 * ceil32(arg2.length)) + 416
               len ceil32(arg2.length) + 100
        uint8(sub_a9a66108[arg1][msg.sender].field_0) = 2
        if arg1 >= stor0.length:
            revert with 0, 50
        if not uint128(stor0[arg1].field_768):
            revert with 0, 18
        if uint256(stor0[arg1].field_512) < uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768):
            revert with 0, 17
        uint256(stor0[arg1].field_512) -= uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
        call msg.sender with:
           value uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768) wei
             gas gas_remaining wei
        if not return_data.size:
            if ext_call.success:
                mem[(2 * ceil32(arg2.length)) + 416] = arg1
                mem[(2 * ceil32(arg2.length)) + 448] = uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
                mem[(2 * ceil32(arg2.length)) + 480] = msg.sender
                emit 0x7ffa8df2: mem[(2 * ceil32(arg2.length)) + 416 len ceil32(arg2.length) + 96]
            mem[(2 * ceil32(arg2.length)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(arg2.length)) + 420] = 32
            mem[(2 * ceil32(arg2.length)) + 452] = 20
            mem[(2 * ceil32(arg2.length)) + 484] = 'Ether failed to sent'
            revert with memory
              from (2 * ceil32(arg2.length)) + 416
               len ceil32(arg2.length) + 100
        mem[(2 * ceil32(arg2.length)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 417] = arg1
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 449] = uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
            mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 481] = msg.sender
            emit 0x7ffa8df2: mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 417 len ceil32(arg2.length) + 96]
        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 421] = 32
        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 453] = 20
        mem[(2 * ceil32(arg2.length)) + ceil32(return_data.size) + 485] = 'Ether failed to sent'
        revert with memory
          from (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 417
           len ceil32(arg2.length) + 100
    if bool(stor0[arg1].field_1792) != 1:
        mem[ceil32(arg2.length) + 288] = -ceil32(arg2.length) - 256
        mem[ceil32(arg2.length) + 224] = -224
        mem[64] = ceil32(arg2.length) + 32
        if sha3(mem[ceil32(arg2.length) + 256 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 256 len -arg2.length + ceil32(arg2.length)]]) != uint256(stor0[arg1].field_1536):
            revert with 0, 'Wrong passphrase'
        uint8(sub_a9a66108[arg1][msg.sender].field_0) = 2
        if arg1 >= stor0.length:
            revert with 0, 50
        if not uint128(stor0[arg1].field_768):
            revert with 0, 18
        if uint256(stor0[arg1].field_512) < uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768):
            revert with 0, 17
        uint256(stor0[arg1].field_512) -= uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
        call msg.sender with:
           value uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Ether failed to sent'
        if return_data.size:
            emit 0x7ffa8df2: arg1, uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768), msg.sender
        else:
            mem[ceil32(arg2.length) + 32] = arg1
            mem[ceil32(arg2.length) + 64] = uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
            emit 0x7ffa8df2: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 64 len ceil32(arg2.length) + -arg2.length + 32], msg.sender
    idx = 0
    s = 0
    while idx < stor0[arg1].field_1793 % 128:
        mem[idx + ceil32(arg2.length) + 352] = uint256(stor[s + sha3((8 * arg1) + ('name', 'stor0', 0) + 7)].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + 288] = ceil32(stor0[arg1].field_1793 % 128) + 96
    mem[ceil32(arg2.length) + ceil32(stor0[arg1].field_1793 % 128) + 352] = arg2.length
    mem[ceil32(arg2.length) + ceil32(stor0[arg1].field_1793 % 128) + 384 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg2.length) + ceil32(stor0[arg1].field_1793 % 128) + 384] = 0
    mem[ceil32(arg2.length) + 224] = ceil32(arg2.length) + ceil32(stor0[arg1].field_1793 % 128) + 128
    if sha3(mem[ceil32(arg2.length) + 256 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 256 len -arg2.length + ceil32(arg2.length)]]) != uint256(stor0[arg1].field_1536):
        mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 388] = 32
        mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 420] = 16
        mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 452] = 'Wrong passphrase'
        revert with memory
          from (2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 384
           len ceil32(arg2.length) + 100
    uint8(sub_a9a66108[arg1][msg.sender].field_0) = 2
    if arg1 >= stor0.length:
        revert with 0, 50
    if not uint128(stor0[arg1].field_768):
        revert with 0, 18
    if uint256(stor0[arg1].field_512) < uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768):
        revert with 0, 17
    uint256(stor0[arg1].field_512) -= uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
    call msg.sender with:
       value uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768) wei
         gas gas_remaining wei
    if not return_data.size:
        if ext_call.success:
            mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 384] = arg1
            mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 416] = uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
            mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 448] = msg.sender
            emit 0x7ffa8df2: mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 384 len ceil32(arg2.length) + 96]
        mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 388] = 32
        mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 420] = 20
        mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 452] = 'Ether failed to sent'
        revert with memory
          from (2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 384
           len ceil32(arg2.length) + 100
    mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + ceil32(return_data.size) + 385] = arg1
        mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + ceil32(return_data.size) + 417] = uint256(stor0[arg1].field_256) / uint128(stor0[arg1].field_768)
        mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + ceil32(return_data.size) + 449] = msg.sender
        emit 0x7ffa8df2: mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + ceil32(return_data.size) + 385 len ceil32(arg2.length) + 96]
    mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + ceil32(return_data.size) + 385] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + ceil32(return_data.size) + 389] = 32
    mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + ceil32(return_data.size) + 421] = 20
    mem[(2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + ceil32(return_data.size) + 453] = 'Ether failed to sent'
    revert with memory
      from (2 * ceil32(arg2.length)) + ceil32(stor0[arg1].field_1793 % 128) + ceil32(return_data.size) + 385
       len ceil32(arg2.length) + 100
}

function sub_6438dd09(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor0.length:
        revert with 0, 'Cashbag ID out of bounds'
    if not uint256(stor0[arg1].field_1280):
        if bool(stor0[arg1].field_1792):
            if bool(stor0[arg1].field_1792) == uint255(uint256(stor0[arg1].field_1792)) * 0.5 < 32:
                revert with 0, 34
            mem[(32 * uint256(stor0[arg1].field_1280)) + 640] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
            if bool(stor0[arg1].field_1792):
                if bool(stor0[arg1].field_1792) == uint255(uint256(stor0[arg1].field_1792)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor0[arg1].field_1792)):
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 672] = 32
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 704] = address(stor0[arg1].field_0)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 736] = uint256(stor0[arg1].field_256)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 768] = uint256(stor0[arg1].field_512)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 800] = uint128(stor0[arg1].field_768)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 832] = uint256(stor0[arg1].field_1024)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 864] = 256
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 960] = uint256(stor0[arg1].field_1280)
                    idx = 0
                    s = 640
                    t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992
                    while idx < uint256(stor0[arg1].field_1280):
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 896] = uint256(stor0[arg1].field_1536)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)]
                    if ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) > uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                        mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024] = 0
                else:
                    if 31 >= uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                        mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = 256 * Mask(248, 0, stor0[arg1].field_1800)
                    else:
                        mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = uint256(stor[sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_0)
                        idx = (32 * uint256(stor0[arg1].field_1280)) + 672
                        s = 0
                        while (32 * uint256(stor0[arg1].field_1280)) + (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 640 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 672] = 32
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 704] = address(stor0[arg1].field_0)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 736] = uint256(stor0[arg1].field_256)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 768] = uint256(stor0[arg1].field_512)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 800] = uint128(stor0[arg1].field_768)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 832] = uint256(stor0[arg1].field_1024)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 864] = 256
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 960] = uint256(stor0[arg1].field_1280)
                    idx = 0
                    s = 640
                    t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992
                    while idx < uint256(stor0[arg1].field_1280):
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 896] = uint256(stor0[arg1].field_1536)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)]
                    if ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) > uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                        mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024] = 0
            else:
                if bool(stor0[arg1].field_1792) == stor0[arg1].field_1793 % 128 < 32:
                    revert with 0, 34
                if not stor0[arg1].field_1793 % 128:
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 672] = 32
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 704] = address(stor0[arg1].field_0)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 736] = uint256(stor0[arg1].field_256)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 768] = uint256(stor0[arg1].field_512)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 800] = uint128(stor0[arg1].field_768)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 832] = uint256(stor0[arg1].field_1024)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 864] = 256
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 960] = uint256(stor0[arg1].field_1280)
                    idx = 0
                    s = 640
                    t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992
                    while idx < uint256(stor0[arg1].field_1280):
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 896] = uint256(stor0[arg1].field_1536)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)]
                    if ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) > uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                        mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024] = 0
                else:
                    if 31 >= stor0[arg1].field_1793 % 128:
                        mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = 256 * Mask(248, 0, stor0[arg1].field_1800)
                    else:
                        mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = uint256(stor[sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_0)
                        idx = (32 * uint256(stor0[arg1].field_1280)) + 672
                        s = 0
                        while (32 * uint256(stor0[arg1].field_1280)) + stor0[arg1].field_1793 % 128 + 640 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 672] = 32
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 704] = address(stor0[arg1].field_0)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 736] = uint256(stor0[arg1].field_256)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 768] = uint256(stor0[arg1].field_512)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 800] = uint128(stor0[arg1].field_768)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 832] = uint256(stor0[arg1].field_1024)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 864] = 256
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 960] = uint256(stor0[arg1].field_1280)
                    idx = 0
                    s = 640
                    t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992
                    while idx < uint256(stor0[arg1].field_1280):
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 896] = uint256(stor0[arg1].field_1536)
                    mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)]
                    if ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) > uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                        mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024] = 0
            return memory
              from (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 672
               len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + (96 * uint256(stor0[arg1].field_1280)) + 352
        if bool(stor0[arg1].field_1792) == stor0[arg1].field_1793 % 128 < 32:
            revert with 0, 34
        mem[(32 * uint256(stor0[arg1].field_1280)) + 640] = stor0[arg1].field_1793 % 128
        if bool(stor0[arg1].field_1792):
            if bool(stor0[arg1].field_1792) == uint255(uint256(stor0[arg1].field_1792)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor0[arg1].field_1792)):
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 672] = 32
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 704] = address(stor0[arg1].field_0)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 736] = uint256(stor0[arg1].field_256)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 768] = uint256(stor0[arg1].field_512)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 800] = uint128(stor0[arg1].field_768)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 832] = uint256(stor0[arg1].field_1024)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 864] = 256
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 960] = uint256(stor0[arg1].field_1280)
                idx = 0
                s = 640
                t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992
                while idx < uint256(stor0[arg1].field_1280):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 896] = uint256(stor0[arg1].field_1536)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992] = stor0[arg1].field_1793 % 128
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 1024 len ceil32(stor0[arg1].field_1793 % 128)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(stor0[arg1].field_1793 % 128)]
                if ceil32(stor0[arg1].field_1793 % 128) > stor0[arg1].field_1793 % 128:
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + stor0[arg1].field_1793 % 128 + 1024] = 0
            else:
                if 31 >= uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                    mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = 256 * Mask(248, 0, stor0[arg1].field_1800)
                else:
                    mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = uint256(stor[sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_0)
                    idx = (32 * uint256(stor0[arg1].field_1280)) + 672
                    s = 0
                    while (32 * uint256(stor0[arg1].field_1280)) + (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 640 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 672] = 32
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 704] = address(stor0[arg1].field_0)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 736] = uint256(stor0[arg1].field_256)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 768] = uint256(stor0[arg1].field_512)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 800] = uint128(stor0[arg1].field_768)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 832] = uint256(stor0[arg1].field_1024)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 864] = 256
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 960] = uint256(stor0[arg1].field_1280)
                idx = 0
                s = 640
                t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992
                while idx < uint256(stor0[arg1].field_1280):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 896] = uint256(stor0[arg1].field_1536)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992] = stor0[arg1].field_1793 % 128
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 1024 len ceil32(stor0[arg1].field_1793 % 128)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(stor0[arg1].field_1793 % 128)]
                if ceil32(stor0[arg1].field_1793 % 128) > stor0[arg1].field_1793 % 128:
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + stor0[arg1].field_1793 % 128 + 1024] = 0
        else:
            if bool(stor0[arg1].field_1792) == stor0[arg1].field_1793 % 128 < 32:
                revert with 0, 34
            if not stor0[arg1].field_1793 % 128:
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 672] = 32
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 704] = address(stor0[arg1].field_0)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 736] = uint256(stor0[arg1].field_256)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 768] = uint256(stor0[arg1].field_512)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 800] = uint128(stor0[arg1].field_768)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 832] = uint256(stor0[arg1].field_1024)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 864] = 256
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 960] = uint256(stor0[arg1].field_1280)
                idx = 0
                s = 640
                t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992
                while idx < uint256(stor0[arg1].field_1280):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 896] = uint256(stor0[arg1].field_1536)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992] = stor0[arg1].field_1793 % 128
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 1024 len ceil32(stor0[arg1].field_1793 % 128)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(stor0[arg1].field_1793 % 128)]
                if ceil32(stor0[arg1].field_1793 % 128) > stor0[arg1].field_1793 % 128:
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + stor0[arg1].field_1793 % 128 + 1024] = 0
            else:
                if 31 >= stor0[arg1].field_1793 % 128:
                    mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = 256 * Mask(248, 0, stor0[arg1].field_1800)
                else:
                    mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = uint256(stor[sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_0)
                    idx = (32 * uint256(stor0[arg1].field_1280)) + 672
                    s = 0
                    while (32 * uint256(stor0[arg1].field_1280)) + stor0[arg1].field_1793 % 128 + 640 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 672] = 32
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 704] = address(stor0[arg1].field_0)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 736] = uint256(stor0[arg1].field_256)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 768] = uint256(stor0[arg1].field_512)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 800] = uint128(stor0[arg1].field_768)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 832] = uint256(stor0[arg1].field_1024)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 864] = 256
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 960] = uint256(stor0[arg1].field_1280)
                idx = 0
                s = 640
                t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992
                while idx < uint256(stor0[arg1].field_1280):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 896] = uint256(stor0[arg1].field_1536)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992] = stor0[arg1].field_1793 % 128
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 1024 len ceil32(stor0[arg1].field_1793 % 128)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(stor0[arg1].field_1793 % 128)]
                if ceil32(stor0[arg1].field_1793 % 128) > stor0[arg1].field_1793 % 128:
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + stor0[arg1].field_1793 % 128 + 1024] = 0
        return memory
          from (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 672
           len ceil32(stor0[arg1].field_1793 % 128) + (96 * uint256(stor0[arg1].field_1280)) + 352
    mem[640] = address(stor[sha3(('name', 'stor0', 0) + (8 * arg1) + 5)].field_0)
    idx = 640
    s = 0
    while (32 * uint256(stor0[arg1].field_1280)) + 608 > idx:
        mem[idx + 32] = address(stor[s + sha3(('name', 'stor0', 0) + (8 * arg1) + 5)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if not bool(stor0[arg1].field_1792):
        if bool(stor0[arg1].field_1792) == stor0[arg1].field_1793 % 128 < 32:
            revert with 0, 34
        mem[(32 * uint256(stor0[arg1].field_1280)) + 640] = stor0[arg1].field_1793 % 128
        if bool(stor0[arg1].field_1792):
            if bool(stor0[arg1].field_1792) == uint255(uint256(stor0[arg1].field_1792)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor0[arg1].field_1792)):
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 672] = 32
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 704] = address(stor0[arg1].field_0)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 736] = uint256(stor0[arg1].field_256)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 768] = uint256(stor0[arg1].field_512)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 800] = uint128(stor0[arg1].field_768)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 832] = uint256(stor0[arg1].field_1024)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 864] = 256
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 960] = uint256(stor0[arg1].field_1280)
                idx = 0
                s = 640
                t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992
                while idx < uint256(stor0[arg1].field_1280):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 896] = uint256(stor0[arg1].field_1536)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992] = stor0[arg1].field_1793 % 128
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 1024 len ceil32(stor0[arg1].field_1793 % 128)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(stor0[arg1].field_1793 % 128)]
                var36001 = ceil32(stor0[arg1].field_1793 % 128)
            else:
                if 31 < uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                    mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = uint256(stor[sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_0)
                    idx = (32 * uint256(stor0[arg1].field_1280)) + 672
                    s = 0
                    while (32 * uint256(stor0[arg1].field_1280)) + (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 640 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    idx = 0
                    s = 640
                    t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992
                    while idx < uint256(stor0[arg1].field_1280):
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992] = stor0[arg1].field_1793 % 128
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 1024 len ceil32(stor0[arg1].field_1793 % 128)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(stor0[arg1].field_1793 % 128)]
                    if ceil32(stor0[arg1].field_1793 % 128) > stor0[arg1].field_1793 % 128:
                        mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + stor0[arg1].field_1793 % 128 + 1024] = 0
                    return 32, address(stor0[arg1].field_0), 
                           uint256(stor0[arg1].field_256),
                           uint256(stor0[arg1].field_512),
                           uint128(stor0[arg1].field_768),
                           uint256(stor0[arg1].field_1024),
                           256,
                           uint256(stor0[arg1].field_1536),
                           (32 * uint256(stor0[arg1].field_1280)) + 288,
                           uint256(stor0[arg1].field_1280),
                           mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992 len (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 32]
                mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = 256 * Mask(248, 0, stor0[arg1].field_1800)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 672] = 32
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 704] = address(stor0[arg1].field_0)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 736] = uint256(stor0[arg1].field_256)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 768] = uint256(stor0[arg1].field_512)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 800] = uint128(stor0[arg1].field_768)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 832] = uint256(stor0[arg1].field_1024)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 864] = 256
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 960] = uint256(stor0[arg1].field_1280)
                idx = 0
                s = 640
                t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992
                while idx < uint256(stor0[arg1].field_1280):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 896] = uint256(stor0[arg1].field_1536)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992] = stor0[arg1].field_1793 % 128
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 1024 len ceil32(stor0[arg1].field_1793 % 128)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(stor0[arg1].field_1793 % 128)]
        else:
            if bool(stor0[arg1].field_1792) == stor0[arg1].field_1793 % 128 < 32:
                revert with 0, 34
            if not stor0[arg1].field_1793 % 128:
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 672] = 32
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 704] = address(stor0[arg1].field_0)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 736] = uint256(stor0[arg1].field_256)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 768] = uint256(stor0[arg1].field_512)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 800] = uint128(stor0[arg1].field_768)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 832] = uint256(stor0[arg1].field_1024)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 864] = 256
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 960] = uint256(stor0[arg1].field_1280)
                idx = 0
                s = 640
                t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992
                while idx < uint256(stor0[arg1].field_1280):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 896] = uint256(stor0[arg1].field_1536)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992] = stor0[arg1].field_1793 % 128
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 1024 len ceil32(stor0[arg1].field_1793 % 128)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(stor0[arg1].field_1793 % 128)]
                var37001 = ceil32(stor0[arg1].field_1793 % 128)
            else:
                if 31 < stor0[arg1].field_1793 % 128:
                    mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = uint256(stor[sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_0)
                    idx = (32 * uint256(stor0[arg1].field_1280)) + 672
                    s = 0
                    while (32 * uint256(stor0[arg1].field_1280)) + stor0[arg1].field_1793 % 128 + 640 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    idx = 0
                    s = 640
                    t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992
                    while idx < uint256(stor0[arg1].field_1280):
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992] = stor0[arg1].field_1793 % 128
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 1024 len ceil32(stor0[arg1].field_1793 % 128)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(stor0[arg1].field_1793 % 128)]
                    if ceil32(stor0[arg1].field_1793 % 128) > stor0[arg1].field_1793 % 128:
                        mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + stor0[arg1].field_1793 % 128 + 1024] = 0
                    return 32, address(stor0[arg1].field_0), 
                           uint256(stor0[arg1].field_256),
                           uint256(stor0[arg1].field_512),
                           uint128(stor0[arg1].field_768),
                           uint256(stor0[arg1].field_1024),
                           256,
                           uint256(stor0[arg1].field_1536),
                           (32 * uint256(stor0[arg1].field_1280)) + 288,
                           uint256(stor0[arg1].field_1280),
                           mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992 len (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 32]
                mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = 256 * Mask(248, 0, stor0[arg1].field_1800)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 672] = 32
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 704] = address(stor0[arg1].field_0)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 736] = uint256(stor0[arg1].field_256)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 768] = uint256(stor0[arg1].field_512)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 800] = uint128(stor0[arg1].field_768)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 832] = uint256(stor0[arg1].field_1024)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 864] = 256
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 960] = uint256(stor0[arg1].field_1280)
                idx = 0
                s = 640
                t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992
                while idx < uint256(stor0[arg1].field_1280):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 896] = uint256(stor0[arg1].field_1536)
                mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 992] = stor0[arg1].field_1793 % 128
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 1024 len ceil32(stor0[arg1].field_1793 % 128)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(stor0[arg1].field_1793 % 128)]
        if ceil32(stor0[arg1].field_1793 % 128) > stor0[arg1].field_1793 % 128:
            mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + stor0[arg1].field_1793 % 128 + 1024] = 0
        return memory
          from (32 * uint256(stor0[arg1].field_1280)) + ceil32(stor0[arg1].field_1793 % 128) + 672
           len ceil32(stor0[arg1].field_1793 % 128) + (96 * uint256(stor0[arg1].field_1280)) + 352
    if bool(stor0[arg1].field_1792) == uint255(uint256(stor0[arg1].field_1792)) * 0.5 < 32:
        revert with 0, 34
    mem[(32 * uint256(stor0[arg1].field_1280)) + 640] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
    if not bool(stor0[arg1].field_1792):
        if bool(stor0[arg1].field_1792) == stor0[arg1].field_1793 % 128 < 32:
            revert with 0, 34
        if not stor0[arg1].field_1793 % 128:
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 672] = 32
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 704] = address(stor0[arg1].field_0)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 736] = uint256(stor0[arg1].field_256)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 768] = uint256(stor0[arg1].field_512)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 800] = uint128(stor0[arg1].field_768)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 832] = uint256(stor0[arg1].field_1024)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 864] = 256
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 960] = uint256(stor0[arg1].field_1280)
            idx = 0
            s = 640
            t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992
            while idx < uint256(stor0[arg1].field_1280):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 896] = uint256(stor0[arg1].field_1536)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
            mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
            mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)]
            var36001 = ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)
        else:
            if 31 < stor0[arg1].field_1793 % 128:
                mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = uint256(stor[sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_0)
                idx = (32 * uint256(stor0[arg1].field_1280)) + 672
                s = 0
                while (32 * uint256(stor0[arg1].field_1280)) + stor0[arg1].field_1793 % 128 + 640 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                s = 640
                t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992
                while idx < uint256(stor0[arg1].field_1280):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)]
                if ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) > uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024] = 0
                return 32, address(stor0[arg1].field_0), 
                       uint256(stor0[arg1].field_256),
                       uint256(stor0[arg1].field_512),
                       uint128(stor0[arg1].field_768),
                       uint256(stor0[arg1].field_1024),
                       256,
                       uint256(stor0[arg1].field_1536),
                       (32 * uint256(stor0[arg1].field_1280)) + 288,
                       uint256(stor0[arg1].field_1280),
                       mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992 len (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 32]
            mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = 256 * Mask(248, 0, stor0[arg1].field_1800)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 672] = 32
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 704] = address(stor0[arg1].field_0)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 736] = uint256(stor0[arg1].field_256)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 768] = uint256(stor0[arg1].field_512)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 800] = uint128(stor0[arg1].field_768)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 832] = uint256(stor0[arg1].field_1024)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 864] = 256
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 960] = uint256(stor0[arg1].field_1280)
            idx = 0
            s = 640
            t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992
            while idx < uint256(stor0[arg1].field_1280):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 896] = uint256(stor0[arg1].field_1536)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
            mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
            mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)]
    else:
        if bool(stor0[arg1].field_1792) == uint255(uint256(stor0[arg1].field_1792)) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, uint256(stor0[arg1].field_1792)):
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 672] = 32
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 704] = address(stor0[arg1].field_0)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 736] = uint256(stor0[arg1].field_256)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 768] = uint256(stor0[arg1].field_512)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 800] = uint128(stor0[arg1].field_768)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 832] = uint256(stor0[arg1].field_1024)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 864] = 256
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 960] = uint256(stor0[arg1].field_1280)
            idx = 0
            s = 640
            t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992
            while idx < uint256(stor0[arg1].field_1280):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 896] = uint256(stor0[arg1].field_1536)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
            mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
            mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)]
            var35001 = ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)
        else:
            if 31 < uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = uint256(stor[sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_0)
                idx = (32 * uint256(stor0[arg1].field_1280)) + 672
                s = 0
                while (32 * uint256(stor0[arg1].field_1280)) + (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 640 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor0', 0) + (8 * arg1) + 7)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                s = 640
                t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992
                while idx < uint256(stor0[arg1].field_1280):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
                mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)]
                if ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) > uint255(uint256(stor0[arg1].field_1792)) * 0.5:
                    mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024] = 0
                return 32, address(stor0[arg1].field_0), 
                       uint256(stor0[arg1].field_256),
                       uint256(stor0[arg1].field_512),
                       uint128(stor0[arg1].field_768),
                       uint256(stor0[arg1].field_1024),
                       256,
                       uint256(stor0[arg1].field_1536),
                       (32 * uint256(stor0[arg1].field_1280)) + 288,
                       uint256(stor0[arg1].field_1280),
                       mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992 len (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 32]
            mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = 256 * Mask(248, 0, stor0[arg1].field_1800)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 672] = 32
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 704] = address(stor0[arg1].field_0)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 736] = uint256(stor0[arg1].field_256)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 768] = uint256(stor0[arg1].field_512)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 800] = uint128(stor0[arg1].field_768)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 832] = uint256(stor0[arg1].field_1024)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 864] = 256
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 960] = uint256(stor0[arg1].field_1280)
            idx = 0
            s = 640
            t = (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992
            while idx < uint256(stor0[arg1].field_1280):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 896] = uint256(stor0[arg1].field_1536)
            mem[(32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 928] = (32 * uint256(stor0[arg1].field_1280)) + 288
            mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 992] = uint255(uint256(stor0[arg1].field_1792)) * 0.5
            mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)] = mem[(32 * uint256(stor0[arg1].field_1280)) + 672 len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)]
            var37001 = ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5)
    if ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) > uint255(uint256(stor0[arg1].field_1792)) * 0.5:
        mem[(64 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + (uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 1024] = 0
    return memory
      from (32 * uint256(stor0[arg1].field_1280)) + ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + 672
       len ceil32(uint255(uint256(stor0[arg1].field_1792)) * 0.5) + (96 * uint256(stor0[arg1].field_1280)) + 352
}



}
