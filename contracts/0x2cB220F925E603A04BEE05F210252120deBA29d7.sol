contract main {




// =====================  Runtime code  =====================


#
#  - swap(bytes32 arg1, bytes32 arg2, uint256 arg3, uint128 arg4, bytes32[] arg5)
#  - destruct(bytes32 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct stor1;
uint256 stor2;
uint32 stor3; offset 224
uint64 base_time; offset 160
address stor3;

function base_time() {
    return base_time
}

function _fallback() payable {
    revert
}

function setUnlockTime(bytes32 arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if address(stor1[arg1].field_768) != msg.sender:
        revert with 0, 'Pool Creator Only'
    if uint32(stor1[arg1].field_736) > -base_time + test266151307():
        revert with 0, 17
    if block.timestamp >= uint64(base_time + uint32(stor1[arg1].field_736)):
        revert with 0, 'Too Late'
    if not uint32(stor1[arg1].field_736):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not eligible when unlock_time is 0'
    if not arg2:
        revert with 0, 'Cannot set to 0'
    uint32(stor1[arg1].field_736) = arg2
}

function initialize(uint64 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        stor2 = sha3(0, block.timestamp, msg.sender)
        address(stor3.field_0) = 0
        base_time = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor2 = sha3(0, block.timestamp, msg.sender)
            address(stor3.field_0) = 0
            base_time = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            stor2 = sha3(0, block.timestamp, msg.sender)
            address(stor3.field_0) = 0
            base_time = arg1
            uint8(stor0.field_8) = 0
}

function claim(bytes32[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 1
        _96 = mem[64]
        mem[64] = mem[64] + 128
        mem[_96] = address(stor1[cd[((32 * idx) + arg1 + 36)]].field_512)
        mem[_96 + 32] = uint32(stor1[cd[((32 * idx) + arg1 + 36)]].field_672)
        mem[_96 + 64] = uint32(stor1[cd[((32 * idx) + arg1 + 36)]].field_704)
        mem[_96 + 96] = uint32(stor1[cd[((32 * idx) + arg1 + 36)]].field_736)
        if uint32(stor1[cd[((32 * idx) + arg1 + 36)]].field_736):
            if uint32(stor1[cd[((32 * idx) + arg1 + 36)]].field_736) > -base_time + test266151307():
                revert with 0, 17
            if uint64(base_time + uint32(stor1[cd[((32 * idx) + arg1 + 36)]].field_736)) <= block.timestamp:
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 1) + 8
                if not uint8(stor1[cd[((32 * idx) + arg1 + 36)]][8][msg.sender].field_0):
                    mem[0] = msg.sender
                    mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 1) + 7
                    if stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 1) + 8
                        uint8(stor1[cd[((32 * idx) + arg1 + 36)]][8][msg.sender].field_0) = 1
                        _102 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0
                        _103 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_103 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_103 + 36 len 28]
                        mem[64] = _102 + 164
                        mem[_102 + 100] = 32
                        mem[_102 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(stor1[cd[((32 * idx) + arg1 + 36)]].field_512)):
                            revert with 0, 'Address: call to non-contract'
                        _110 = mem[_103]
                        s = 0
                        while s < _110:
                            mem[s + _102 + 164] = mem[s + _103 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_110) <= _110:
                            call address(stor1[cd[((32 * idx) + arg1 + 36)]].field_512).mem[_102 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_102 + 168 len _110 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_102 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_102 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _102 + 232] = mem[idx + _102 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_102 + 232]
                                if not mem[96]:
                                    if idx >= arg1.length:
                                        revert with 0, 50
                                    _222 = mem[_96]
                                    mem[_102 + 164] = block.timestamp
                                    mem[_102 + 196] = stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0
                                    mem[_102 + 228] = address(_222)
                                    emit ClaimSuccess(block.timestamp, stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0, address(_222), cd[((32 * idx) + arg1 + 36)], msg.sender);
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= arg1.length:
                                        revert with 0, 50
                                    _254 = mem[_96]
                                    mem[_102 + 164] = block.timestamp
                                    mem[_102 + 196] = stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0
                                    mem[_102 + 228] = address(_254)
                                    emit ClaimSuccess(block.timestamp, stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0, address(_254), cd[((32 * idx) + arg1 + 36)], msg.sender);
                            else:
                                mem[64] = _102 + ceil32(return_data.size) + 165
                                mem[_102 + 164] = return_data.size
                                mem[_102 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_102 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_102 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _102 + ceil32(return_data.size) + 233] = mem[idx + _102 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_102 + ceil32(return_data.size) + 233]
                                if not return_data.size:
                                    if idx >= arg1.length:
                                        revert with 0, 50
                                    _225 = mem[_96]
                                    mem[_102 + ceil32(return_data.size) + 165] = block.timestamp
                                    mem[_102 + ceil32(return_data.size) + 197] = stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0
                                    mem[_102 + ceil32(return_data.size) + 229] = address(_225)
                                    emit ClaimSuccess(block.timestamp, stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0, address(_225), cd[((32 * idx) + arg1 + 36)], msg.sender);
                                else:
                                    require return_data.size >= 32
                                    require mem[_102 + 196] == bool(mem[_102 + 196])
                                    if not mem[_102 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= arg1.length:
                                        revert with 0, 50
                                    _256 = mem[_96]
                                    mem[_102 + ceil32(return_data.size) + 165] = block.timestamp
                                    mem[_102 + ceil32(return_data.size) + 197] = stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0
                                    mem[_102 + ceil32(return_data.size) + 229] = address(_256)
                                    emit ClaimSuccess(block.timestamp, stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0, address(_256), cd[((32 * idx) + arg1 + 36)], msg.sender);
                        else:
                            mem[_110 + _102 + 164] = 0
                            call address(stor1[cd[((32 * idx) + arg1 + 36)]].field_512).mem[_102 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_102 + 168 len _110 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_102 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_102 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _102 + 232] = mem[idx + _102 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_102 + 232]
                                if not mem[96]:
                                    if idx >= arg1.length:
                                        revert with 0, 50
                                    _228 = mem[_96]
                                    mem[_102 + 164] = block.timestamp
                                    mem[_102 + 196] = stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0
                                    mem[_102 + 228] = address(_228)
                                    emit ClaimSuccess(block.timestamp, stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0, address(_228), cd[((32 * idx) + arg1 + 36)], msg.sender);
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= arg1.length:
                                        revert with 0, 50
                                    _258 = mem[_96]
                                    mem[_102 + 164] = block.timestamp
                                    mem[_102 + 196] = stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0
                                    mem[_102 + 228] = address(_258)
                                    emit ClaimSuccess(block.timestamp, stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0, address(_258), cd[((32 * idx) + arg1 + 36)], msg.sender);
                            else:
                                mem[64] = _102 + ceil32(return_data.size) + 165
                                mem[_102 + 164] = return_data.size
                                mem[_102 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_102 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_102 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _102 + ceil32(return_data.size) + 233] = mem[idx + _102 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_102 + ceil32(return_data.size) + 233]
                                if not return_data.size:
                                    if idx >= arg1.length:
                                        revert with 0, 50
                                    _231 = mem[_96]
                                    mem[_102 + ceil32(return_data.size) + 165] = block.timestamp
                                    mem[_102 + ceil32(return_data.size) + 197] = stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0
                                    mem[_102 + ceil32(return_data.size) + 229] = address(_231)
                                    emit ClaimSuccess(block.timestamp, stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0, address(_231), cd[((32 * idx) + arg1 + 36)], msg.sender);
                                else:
                                    require return_data.size >= 32
                                    require mem[_102 + 196] == bool(mem[_102 + 196])
                                    if not mem[_102 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= arg1.length:
                                        revert with 0, 50
                                    _260 = mem[_96]
                                    mem[_102 + ceil32(return_data.size) + 165] = block.timestamp
                                    mem[_102 + ceil32(return_data.size) + 197] = stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0
                                    mem[_102 + ceil32(return_data.size) + 229] = address(_260)
                                    emit ClaimSuccess(block.timestamp, stor1[cd[((32 * idx) + arg1 + 36)]][7][msg.sender].field_0, address(_260), cd[((32 * idx) + arg1 + 36)], msg.sender);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function check_availability(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = address(stor1[arg1].field_512)
    mem[128] = uint32(stor1[arg1].field_672)
    mem[160] = uint32(stor1[arg1].field_704)
    mem[192] = uint32(stor1[arg1].field_736)
    if uint32(stor1[arg1].field_672) > -base_time + test266151307():
        revert with 0, 17
    if uint32(stor1[arg1].field_704) > -base_time + test266151307():
        revert with 0, 17
    if uint32(stor1[arg1].field_736) > -base_time + test266151307():
        revert with 0, 17
    if uint32(stor1[arg1].field_736) > -base_time + test266151307():
        revert with 0, 17
    if uint32(stor1[arg1].field_672) > -base_time + test266151307():
        revert with 0, 17
    if uint32(stor1[arg1].field_704) > -base_time + test266151307():
        revert with 0, 17
    mem[224] = stor1[arg1].field_1024
    if uint8(stor1[arg1][8][msg.sender].field_0):
        if not stor1[arg1].field_1024:
            mem[64] = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
            mem[(32 * stor1[arg1].field_1024) + 256] = stor1[arg1].field_1280
            if not stor1[arg1].field_1280:
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
                idx = 0
                s = 256
                t = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704
                while idx < stor1[arg1].field_1024:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 320] = uint128(stor1[arg1].field_256)
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (96 * stor1[arg1].field_1024) + 416
                mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = stor1[arg1].field_1280
                idx = 0
                s = (32 * stor1[arg1].field_1024) + 288
                t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
                while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                    mem[t] = mem[s + 16 len 16]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 544] = 1
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 576] = uint64(base_time + uint32(stor1[arg1].field_672))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 608] = uint64(base_time + uint32(stor1[arg1].field_704))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 640] = address(stor1[arg1].field_0)
                return memory
                  from (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
                   len (96 * stor1[arg1].field_1024) + (32 * mem[(32 * stor1[arg1].field_1024) + 256]) + 448
        else:
            mem[256] = address(stor1[arg1][4].field_0)
            idx = 256
            s = 0
            while (32 * stor1[arg1].field_1024) + 224 > idx:
                mem[idx + 32] = address(stor1[arg1][s + 4].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[64] = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
            mem[(32 * stor1[arg1].field_1024) + 256] = stor1[arg1].field_1280
            if not stor1[arg1].field_1280:
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
                idx = 0
                s = 256
                t = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704
                while idx < stor1[arg1].field_1024:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 320] = uint128(stor1[arg1].field_256)
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (32 * stor1[arg1].field_1024) + 416
                mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = stor1[arg1].field_1280
                idx = 0
                s = (32 * stor1[arg1].field_1024) + 288
                t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
                while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                    mem[t] = mem[s + 16 len 16]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288 len 256], 
                       1,
                       base_time + uint32(stor1[arg1].field_672) << 192,
                       base_time + uint32(stor1[arg1].field_704) << 192,
                       address(stor1[arg1].field_0),
                       mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672 len (32 * stor1[arg1].field_1024) + (32 * mem[(32 * stor1[arg1].field_1024) + 256]) + 64]
        ('bool', ('field', 1280, ('stor', ('map', ('param', 'arg1'), ('name', 'stor1', 1)))))
        mem[0] = sha3(arg1, 1) + 5
        mem[(32 * stor1[arg1].field_1024) + 288] = uint128(stor1[arg1][5].field_0)
        idx = (32 * stor1[arg1].field_1024) + 288
        s = 0
        while (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 256 > idx:
            mem[idx + 32] = uint128(stor1[arg1][5].field_8 * (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s))
            idx = idx + 32
            s = (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)
            continue 
        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
        idx = 0
        s = 256
        t = mem[64] + 416
        while idx < mem[224]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = uint128(stor1[arg1].field_256)
        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (32 * stor1[arg1].field_1024) + 416
        mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = mem[(32 * stor1[arg1].field_1024) + 256]
        idx = 0
        s = (32 * stor1[arg1].field_1024) + 288
        t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
        while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
            mem[t] = mem[s + 16 len 16]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 544] = 1
    else:
        if not stor1[arg1][7][msg.sender].field_0:
            if not stor1[arg1].field_1024:
                mem[64] = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
                mem[(32 * stor1[arg1].field_1024) + 256] = stor1[arg1].field_1280
                if not stor1[arg1].field_1280:
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
                    idx = 0
                    s = 256
                    t = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704
                    while idx < stor1[arg1].field_1024:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 320] = uint128(stor1[arg1].field_256)
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (96 * stor1[arg1].field_1024) + 416
                    mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = stor1[arg1].field_1280
                    idx = 0
                    s = (32 * stor1[arg1].field_1024) + 288
                    t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
                    while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                        mem[t] = mem[s + 16 len 16]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 544] = 0
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 576] = uint64(base_time + uint32(stor1[arg1].field_672))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 608] = uint64(base_time + uint32(stor1[arg1].field_704))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 640] = address(stor1[arg1].field_0)
                    return memory
                      from (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
                       len (96 * stor1[arg1].field_1024) + (32 * mem[(32 * stor1[arg1].field_1024) + 256]) + 448
            else:
                mem[256] = address(stor1[arg1][4].field_0)
                idx = 256
                s = 0
                while (32 * stor1[arg1].field_1024) + 224 > idx:
                    mem[idx + 32] = address(stor1[arg1][s + 4].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[64] = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
                mem[(32 * stor1[arg1].field_1024) + 256] = stor1[arg1].field_1280
                if not stor1[arg1].field_1280:
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
                    idx = 0
                    s = 256
                    t = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704
                    while idx < stor1[arg1].field_1024:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 320] = uint128(stor1[arg1].field_256)
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (32 * stor1[arg1].field_1024) + 416
                    mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = stor1[arg1].field_1280
                    idx = 0
                    s = (32 * stor1[arg1].field_1024) + 288
                    t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
                    while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                        mem[t] = mem[s + 16 len 16]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288 len 256], 
                           0,
                           base_time + uint32(stor1[arg1].field_672) << 192,
                           base_time + uint32(stor1[arg1].field_704) << 192,
                           address(stor1[arg1].field_0),
                           mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672 len (32 * stor1[arg1].field_1024) + (32 * mem[(32 * stor1[arg1].field_1024) + 256]) + 64]
            ('bool', ('field', 1280, ('stor', ('map', ('param', 'arg1'), ('name', 'stor1', 1)))))
            mem[0] = sha3(arg1, 1) + 5
            mem[(32 * stor1[arg1].field_1024) + 288] = uint128(stor1[arg1][5].field_0)
            idx = (32 * stor1[arg1].field_1024) + 288
            s = 0
            while (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 256 > idx:
                mem[idx + 32] = uint128(stor1[arg1][5].field_8 * (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s))
                idx = idx + 32
                s = (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)
                continue 
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
            idx = 0
            s = 256
            t = mem[64] + 416
            while idx < mem[224]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = uint128(stor1[arg1].field_256)
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (32 * stor1[arg1].field_1024) + 416
            mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = mem[(32 * stor1[arg1].field_1024) + 256]
            idx = 0
            s = (32 * stor1[arg1].field_1024) + 288
            t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
            while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                mem[t] = mem[s + 16 len 16]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 544] = 0
        else:
            if uint32(stor1[arg1].field_736):
                if not stor1[arg1].field_1024:
                    mem[64] = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
                    mem[(32 * stor1[arg1].field_1024) + 256] = stor1[arg1].field_1280
                    if not stor1[arg1].field_1280:
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
                        idx = 0
                        s = 256
                        t = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704
                        while idx < stor1[arg1].field_1024:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 320] = uint128(stor1[arg1].field_256)
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (96 * stor1[arg1].field_1024) + 416
                        mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = stor1[arg1].field_1280
                        idx = 0
                        s = (32 * stor1[arg1].field_1024) + 288
                        t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
                        while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                            mem[t] = mem[s + 16 len 16]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 544] = 0
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 576] = uint64(base_time + uint32(stor1[arg1].field_672))
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 608] = uint64(base_time + uint32(stor1[arg1].field_704))
                        mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 640] = address(stor1[arg1].field_0)
                        return memory
                          from (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
                           len (96 * stor1[arg1].field_1024) + (32 * mem[(32 * stor1[arg1].field_1024) + 256]) + 448
                    mem[0] = sha3(arg1, 1) + 5
                    mem[(32 * stor1[arg1].field_1024) + 288] = uint128(stor1[arg1][5].field_0)
                    idx = (32 * stor1[arg1].field_1024) + 288
                    s = 0
                    while (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 256 > idx:
                        mem[idx + 32] = uint128(stor1[arg1][5].field_8 * (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s))
                        idx = idx + 32
                        s = (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)
                        continue 
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
                    idx = 0
                    s = 256
                    t = mem[64] + 416
                    while idx < mem[224]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = uint128(stor1[arg1].field_256)
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (32 * stor1[arg1].field_1024) + 416
                    mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = mem[(32 * stor1[arg1].field_1024) + 256]
                    idx = 0
                    s = (32 * stor1[arg1].field_1024) + 288
                    t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
                    while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                        mem[t] = mem[s + 16 len 16]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 544] = 0
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 576] = uint64(base_time + uint32(stor1[arg1].field_672))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 608] = uint64(base_time + uint32(stor1[arg1].field_704))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 640] = address(stor1[arg1].field_0)
                    return memory
                      from mem[64]
                       len (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + (32 * mem[(32 * stor1[arg1].field_1024) + 256]) + -mem[64] + 736
                mem[256] = address(stor1[arg1][4].field_0)
                idx = 256
                s = 0
                while (32 * stor1[arg1].field_1024) + 224 > idx:
                    mem[idx + 32] = address(stor1[arg1][s + 4].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(32 * stor1[arg1].field_1024) + 256] = stor1[arg1].field_1280
                if not stor1[arg1].field_1280:
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
                    idx = 0
                    s = 256
                    t = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704
                    while idx < stor1[arg1].field_1024:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 320] = uint128(stor1[arg1].field_256)
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (32 * stor1[arg1].field_1024) + 416
                    mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = stor1[arg1].field_1280
                    idx = 0
                    s = (32 * stor1[arg1].field_1024) + 288
                    t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
                    while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                        mem[t] = mem[s + 16 len 16]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288 len 256], 
                           0,
                           base_time + uint32(stor1[arg1].field_672) << 192,
                           base_time + uint32(stor1[arg1].field_704) << 192,
                           address(stor1[arg1].field_0),
                           mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672 len (32 * stor1[arg1].field_1024) + (32 * mem[(32 * stor1[arg1].field_1024) + 256]) + 64]
                mem[(32 * stor1[arg1].field_1024) + 288] = uint128(stor1[arg1][5].field_0)
                idx = (32 * stor1[arg1].field_1024) + 288
                s = 0
                while (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 256 > idx:
                    mem[idx + 32] = uint128(stor1[arg1][5].field_8 * (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s))
                    idx = idx + 32
                    s = (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)
                    continue 
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
                idx = 0
                s = 256
                t = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704
                while idx < stor1[arg1].field_1024:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 320] = uint128(stor1[arg1].field_256)
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (32 * stor1[arg1].field_1024) + 416
                mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = stor1[arg1].field_1280
                idx = 0
                s = (32 * stor1[arg1].field_1024) + 288
                t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
                while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                    mem[t] = mem[s + 16 len 16]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 544] = 0
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 576] = uint64(base_time + uint32(stor1[arg1].field_672))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 608] = uint64(base_time + uint32(stor1[arg1].field_704))
                mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 640] = address(stor1[arg1].field_0)
                return memory
                  from (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
                   len (96 * stor1[arg1].field_1024) + (32 * mem[(32 * stor1[arg1].field_1024) + 256]) + 448
            if not stor1[arg1].field_1024:
                mem[64] = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
                mem[(32 * stor1[arg1].field_1024) + 256] = stor1[arg1].field_1280
                if not stor1[arg1].field_1280:
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
                    idx = 0
                    s = 256
                    t = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704
                    while idx < stor1[arg1].field_1024:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 320] = uint128(stor1[arg1].field_256)
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (96 * stor1[arg1].field_1024) + 416
                    mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = stor1[arg1].field_1280
                    idx = 0
                    s = (32 * stor1[arg1].field_1024) + 288
                    t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
                    while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                        mem[t] = mem[s + 16 len 16]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 544] = 1
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 576] = uint64(base_time + uint32(stor1[arg1].field_672))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 608] = uint64(base_time + uint32(stor1[arg1].field_704))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 640] = address(stor1[arg1].field_0)
                    return memory
                      from (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
                       len (96 * stor1[arg1].field_1024) + (32 * mem[(32 * stor1[arg1].field_1024) + 256]) + 448
            else:
                mem[256] = address(stor1[arg1][4].field_0)
                idx = 256
                s = 0
                while (32 * stor1[arg1].field_1024) + 224 > idx:
                    mem[idx + 32] = address(stor1[arg1][s + 4].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[64] = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288
                mem[(32 * stor1[arg1].field_1024) + 256] = stor1[arg1].field_1280
                if not stor1[arg1].field_1280:
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
                    idx = 0
                    s = 256
                    t = (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704
                    while idx < stor1[arg1].field_1024:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 320] = uint128(stor1[arg1].field_256)
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
                    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (32 * stor1[arg1].field_1024) + 416
                    mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = stor1[arg1].field_1280
                    idx = 0
                    s = (32 * stor1[arg1].field_1024) + 288
                    t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
                    while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                        mem[t] = mem[s + 16 len 16]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288 len 256], 
                           1,
                           base_time + uint32(stor1[arg1].field_672) << 192,
                           base_time + uint32(stor1[arg1].field_704) << 192,
                           address(stor1[arg1].field_0),
                           mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672 len (32 * stor1[arg1].field_1024) + (32 * mem[(32 * stor1[arg1].field_1024) + 256]) + 64]
            ('bool', ('field', 1280, ('stor', ('map', ('param', 'arg1'), ('name', 'stor1', 1)))))
            mem[0] = sha3(arg1, 1) + 5
            mem[(32 * stor1[arg1].field_1024) + 288] = uint128(stor1[arg1][5].field_0)
            idx = (32 * stor1[arg1].field_1024) + 288
            s = 0
            while (32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 256 > idx:
                mem[idx + 32] = uint128(stor1[arg1][5].field_8 * (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s))
                idx = idx + 32
                s = (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)
                continue 
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 288] = 384
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 672] = stor1[arg1].field_1024
            idx = 0
            s = 256
            t = mem[64] + 416
            while idx < mem[224]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = uint128(stor1[arg1].field_256)
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 352] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_672))
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 384] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_704))
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 416] = block.timestamp > uint64(base_time + uint32(stor1[arg1].field_736))
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 448] = uint64(base_time + uint32(stor1[arg1].field_736))
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 480] = stor1[arg1][7][msg.sender].field_0
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 512] = (32 * stor1[arg1].field_1024) + 416
            mem[(64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 704] = mem[(32 * stor1[arg1].field_1024) + 256]
            idx = 0
            s = (32 * stor1[arg1].field_1024) + 288
            t = (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 736
            while idx < mem[(32 * stor1[arg1].field_1024) + 256]:
                mem[t] = mem[s + 16 len 16]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 544] = 1
    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 576] = uint64(base_time + uint32(stor1[arg1].field_672))
    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 608] = uint64(base_time + uint32(stor1[arg1].field_704))
    mem[(32 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + 640] = address(stor1[arg1].field_0)
    return memory
      from mem[64]
       len (64 * stor1[arg1].field_1024) + (32 * stor1[arg1].field_1280) + (32 * mem[(32 * stor1[arg1].field_1024) + 256]) + -mem[64] + 736
}

function fill_pool(bytes32 arg1, uint256 arg2, uint256 arg3, string arg4, address[] arg5, uint128[] arg6, uint256 arg7, address arg8, uint256 arg9, uint256 arg10, address arg11) payable {
    require calldata.size - 4 >= 352
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if (32 * arg5.length) + 160 < 128 or ceil32(arg4.length) + (32 * arg5.length) + 160 > test266151307():
        revert with 0, 65
    mem[ceil32(arg4.length) + 128] = arg5.length
    require calldata.size >= arg5 + (32 * arg5.length) + 36
    idx = 0
    s = arg5 + 36
    t = ceil32(arg4.length) + 160
    while idx < arg5.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if (32 * arg6.length) + 192 < 160 or ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192 > test266151307():
        revert with 0, 65
    mem[ceil32(arg4.length) + (32 * arg5.length) + 160] = arg6.length
    require calldata.size >= arg6 + (32 * arg6.length) + 36
    idx = 0
    s = arg6 + 36
    t = ceil32(arg4.length) + (32 * arg5.length) + 192
    while idx < arg6.length:
        require cd[s] == uint128(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg8 == arg8
    require arg11 == arg11
    if uint32(stor3.field_224) == test266151307():
        revert with 0, 17
    uint32(stor3.field_224) = uint32(uint32(stor3.field_224) + 1)
    if arg2 >= arg3:
        revert with 0, 'Start time should be earlier than end time.'
    if arg3 < arg7:
        if arg10 > arg9:
            revert with 0, 'Limit needs to be less than or equal to the total supply'
        if arg9 >= 0x100000000000000000000000000000000:
            revert with 0, 'No more than 2^128 tokens(incluidng decimals) allowed'
        if Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] <= 0:
            revert with 0, 'Exchange token addresses need to be set'
        if Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if arg6.length != 2 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
            revert with 0, 'Size of ratios = 2 * size of exchange_addrs'
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = address(msg.sender)
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 244] = block.timestamp
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 276] = uint32(stor3.field_224) << 224
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 280] = stor2
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 88
        mem[32] = 1
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 312] = arg11
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 344] = 0
        address(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_0) = arg11
        stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_160 % 1099511627776 = 0
        stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_256 % 1 = 0
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 376] = uint128(arg9)
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 408] = uint128(arg10)
        uint128(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_256) = uint128(arg9)
        uint128(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_384) = uint128(arg10)
        mem[64] = ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 568
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 440] = arg8
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 472] = uint32(arg2)
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 504] = uint32(arg3)
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 536] = uint32(arg7)
        address(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_512) = arg8
        uint32(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_672) = uint32(arg2)
        uint32(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_704) = uint32(arg3)
        uint32(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_736) = uint32(arg7)
        address(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_768) = msg.sender
        stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1024 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[0] = sha3(sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2), 1) + 4
        if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
            idx = 0
            while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1024 > idx:
                stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            uint8(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_2304) = 0
            _5799 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            idx = 0
            while idx < _5799:
                if idx >= mem[ceil32(arg4.length) + 128]:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] != address(stor3.field_0):
                    if idx >= mem[ceil32(arg4.length) + 128]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + ceil32(arg4.length) + 172 len 20])
                    staticcall mem[(32 * idx) + ceil32(arg4.length) + 172 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5827 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_5827] <= 0:
                        revert with 0, 'Not a valid ERC20'
                stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1280++
                mem[0] = sha3(sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2), 1) + 5
                stor[uint255(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1281) + ('array', 5, ('map', ('data', 'msg.sender', 'timestamp', ('type', 32, ('field', 224, ('stor', ('name', 'stor3', 3)))), ('stor', ('name', 'stor2', 2))), ('name', 'stor1', 1)))].field_0 = stor[uint255(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1281) + ('array', 5, ('map', ('data', 'msg.sender', 'timestamp', ('type', 32, ('field', 224, ('stor', ('name', 'stor3', 3)))), ('stor', ('name', 'stor2', 2))), ('name', 'stor1', 1)))].field_0 and !(test266151307() * 256^(16 * bool(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1280)))
                if idx == -1:
                    revert with 0, 17
                _5799 = mem[ceil32(arg4.length) + 128]
                idx = idx + 1
                continue 
            stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
            mem[0] = sha3(sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2), 1) + 6
            if not mem[ceil32(arg4.length) + (32 * arg5.length) + 160]:
                idx = 0
                while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 + 1 / 2 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 6].field_0 = 0
                    idx = idx + 1
                    continue 
                _7215 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg9
                _7225 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_7215 + 132] = 32
                mem[_7215 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg8):
                    revert with 0, 'Address: call to non-contract'
                _7267 = mem[_7225]
                mem[_7215 + 196 len ceil32(mem[_7225])] = mem[_7225 + 32 len ceil32(mem[_7225])]
                if ceil32(_7267) <= _7267:
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_7215 + 200 len _7267 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_7215 + 196] = arg9
                            mem[_7215 + 228] = block.timestamp
                            mem[_7215 + 260] = arg8
                            mem[_7215 + 292] = 320
                            mem[_7215 + 516] = mem[96]
                            mem[_7215 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7215 + 324] = arg2
                                mem[_7215 + 356] = arg3
                                mem[_7215 + 388] = ceil32(mem[96]) + 352
                                _9921 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + 580
                                while idx < _9921:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 420] = ceil32(mem[96]) + (32 * _9921) + 384
                                _11127 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + (32 * _9921) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + (32 * _9921) + 612
                                while idx < _11127:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 452] = arg11
                                mem[_7215 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + 548 len ceil32(mem[96]) + (32 * _9921) + (32 * _11127) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9921) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7215 + 548] = 0
                                mem[_7215 + 324] = arg2
                                mem[_7215 + 356] = arg3
                                mem[_7215 + 388] = ceil32(mem[96]) + 352
                                _9922 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + 580
                                while idx < _9922:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 420] = ceil32(mem[96]) + (32 * _9922) + 384
                                _11128 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + (32 * _9922) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + (32 * _9922) + 612
                                while idx < _11128:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 452] = arg11
                                mem[_7215 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + 548 len ceil32(mem[96]) + (32 * _9922) + (32 * _11128) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9922) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_7215 + 196] = arg9
                            mem[_7215 + 228] = block.timestamp
                            mem[_7215 + 260] = arg8
                            mem[_7215 + 292] = 320
                            mem[_7215 + 516] = mem[96]
                            mem[_7215 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var126001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7215 + 324] = arg2
                                mem[_7215 + 356] = arg3
                                mem[_7215 + 388] = ceil32(mem[96]) + 352
                                _9923 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + 580
                                while idx < _9923:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 420] = ceil32(mem[96]) + (32 * _9923) + 384
                                _11129 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + (32 * _9923) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + (32 * _9923) + 612
                                while idx < _11129:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 452] = arg11
                                mem[_7215 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + 548 len ceil32(mem[96]) + (32 * _9923) + (32 * _11129) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9923) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7215 + 548] = 0
                                mem[_7215 + 324] = arg2
                                mem[_7215 + 356] = arg3
                                mem[_7215 + 388] = ceil32(mem[96]) + 352
                                _9924 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + 580
                                while idx < _9924:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 420] = ceil32(mem[96]) + (32 * _9924) + 384
                                _11130 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + (32 * _9924) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + (32 * _9924) + 612
                                while idx < _11130:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 452] = arg11
                                mem[_7215 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + 548 len ceil32(mem[96]) + (32 * _9924) + (32 * _11130) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9924) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_7215 + 196] = return_data.size
                        mem[_7215 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_7215 + ceil32(return_data.size) + 197] = arg9
                            mem[_7215 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_7215 + ceil32(return_data.size) + 261] = arg8
                            mem[_7215 + ceil32(return_data.size) + 293] = 320
                            mem[_7215 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7215 + ceil32(return_data.size) + 325] = arg2
                                mem[_7215 + ceil32(return_data.size) + 357] = arg3
                                mem[_7215 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9927 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 581
                                while idx < _9927:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9927) + 384
                                _11131 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9927) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9927) + 613
                                while idx < _11131:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9927) + (32 * _11131) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9927) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7215 + ceil32(return_data.size) + 549] = 0
                                mem[_7215 + ceil32(return_data.size) + 325] = arg2
                                mem[_7215 + ceil32(return_data.size) + 357] = arg3
                                mem[_7215 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9928 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 581
                                while idx < _9928:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9928) + 384
                                _11132 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9928) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9928) + 613
                                while idx < _11132:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9928) + (32 * _11132) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9928) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_7215 + 228] == bool(mem[_7215 + 228])
                            if not mem[_7215 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_7215 + ceil32(return_data.size) + 197] = arg9
                            mem[_7215 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_7215 + ceil32(return_data.size) + 261] = arg8
                            mem[_7215 + ceil32(return_data.size) + 293] = 320
                            mem[_7215 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var126001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7215 + ceil32(return_data.size) + 325] = arg2
                                mem[_7215 + ceil32(return_data.size) + 357] = arg3
                                mem[_7215 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9929 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 581
                                while idx < _9929:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9929) + 384
                                _11133 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9929) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9929) + 613
                                while idx < _11133:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9929) + (32 * _11133) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9929) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7215 + ceil32(return_data.size) + 549] = 0
                                mem[_7215 + ceil32(return_data.size) + 325] = arg2
                                mem[_7215 + ceil32(return_data.size) + 357] = arg3
                                mem[_7215 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9930 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 581
                                while idx < _9930:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9930) + 384
                                _11134 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9930) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9930) + 613
                                while idx < _11134:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9930) + (32 * _11134) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9930) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                else:
                    mem[_7267 + _7215 + 196] = 0
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_7215 + 200 len _7267 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_7215 + 196] = arg9
                            mem[_7215 + 228] = block.timestamp
                            mem[_7215 + 260] = arg8
                            mem[_7215 + 292] = 320
                            mem[_7215 + 516] = mem[96]
                            mem[_7215 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7215 + 324] = arg2
                                mem[_7215 + 356] = arg3
                                mem[_7215 + 388] = ceil32(mem[96]) + 352
                                _9933 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + 580
                                while idx < _9933:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 420] = ceil32(mem[96]) + (32 * _9933) + 384
                                _11135 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + (32 * _9933) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + (32 * _9933) + 612
                                while idx < _11135:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 452] = arg11
                                mem[_7215 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + 548 len ceil32(mem[96]) + (32 * _9933) + (32 * _11135) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9933) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7215 + 548] = 0
                                mem[_7215 + 324] = arg2
                                mem[_7215 + 356] = arg3
                                mem[_7215 + 388] = ceil32(mem[96]) + 352
                                _9934 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + 580
                                while idx < _9934:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 420] = ceil32(mem[96]) + (32 * _9934) + 384
                                _11136 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + (32 * _9934) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + (32 * _9934) + 612
                                while idx < _11136:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 452] = arg11
                                mem[_7215 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + 548 len ceil32(mem[96]) + (32 * _9934) + (32 * _11136) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9934) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_7215 + 196] = arg9
                            mem[_7215 + 228] = block.timestamp
                            mem[_7215 + 260] = arg8
                            mem[_7215 + 292] = 320
                            mem[_7215 + 516] = mem[96]
                            mem[_7215 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var126001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7215 + 324] = arg2
                                mem[_7215 + 356] = arg3
                                mem[_7215 + 388] = ceil32(mem[96]) + 352
                                _9935 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + 580
                                while idx < _9935:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 420] = ceil32(mem[96]) + (32 * _9935) + 384
                                _11137 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + (32 * _9935) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + (32 * _9935) + 612
                                while idx < _11137:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 452] = arg11
                                mem[_7215 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + 548 len ceil32(mem[96]) + (32 * _9935) + (32 * _11137) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9935) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7215 + 548] = 0
                                mem[_7215 + 324] = arg2
                                mem[_7215 + 356] = arg3
                                mem[_7215 + 388] = ceil32(mem[96]) + 352
                                _9936 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + 580
                                while idx < _9936:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 420] = ceil32(mem[96]) + (32 * _9936) + 384
                                _11138 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + (32 * _9936) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + (32 * _9936) + 612
                                while idx < _11138:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + 452] = arg11
                                mem[_7215 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + 548 len ceil32(mem[96]) + (32 * _9936) + (32 * _11138) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9936) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_7215 + 196] = return_data.size
                        mem[_7215 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_7215 + ceil32(return_data.size) + 197] = arg9
                            mem[_7215 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_7215 + ceil32(return_data.size) + 261] = arg8
                            mem[_7215 + ceil32(return_data.size) + 293] = 320
                            mem[_7215 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7215 + ceil32(return_data.size) + 325] = arg2
                                mem[_7215 + ceil32(return_data.size) + 357] = arg3
                                mem[_7215 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9939 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 581
                                while idx < _9939:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9939) + 384
                                _11139 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9939) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9939) + 613
                                while idx < _11139:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9939) + (32 * _11139) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9939) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7215 + ceil32(return_data.size) + 549] = 0
                                mem[_7215 + ceil32(return_data.size) + 325] = arg2
                                mem[_7215 + ceil32(return_data.size) + 357] = arg3
                                mem[_7215 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9940 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 581
                                while idx < _9940:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9940) + 384
                                _11140 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9940) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9940) + 613
                                while idx < _11140:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9940) + (32 * _11140) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9940) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_7215 + 228] == bool(mem[_7215 + 228])
                            if not mem[_7215 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_7215 + ceil32(return_data.size) + 197] = arg9
                            mem[_7215 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_7215 + ceil32(return_data.size) + 261] = arg8
                            mem[_7215 + ceil32(return_data.size) + 293] = 320
                            mem[_7215 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var126001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7215 + ceil32(return_data.size) + 325] = arg2
                                mem[_7215 + ceil32(return_data.size) + 357] = arg3
                                mem[_7215 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9941 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 581
                                while idx < _9941:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9941) + 384
                                _11141 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9941) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9941) + 613
                                while idx < _11141:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9941) + (32 * _11141) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9941) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7215 + ceil32(return_data.size) + 549] = 0
                                mem[_7215 + ceil32(return_data.size) + 325] = arg2
                                mem[_7215 + ceil32(return_data.size) + 357] = arg3
                                mem[_7215 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9942 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + 581
                                while idx < _9942:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7215 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9942) + 384
                                _11142 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9942) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7215 + ceil32(return_data.size) + (32 * _9942) + 613
                                while idx < _11142:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7215 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9942) + (32 * _11142) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9942) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
            else:
                s = 0
                idx = ceil32(arg4.length) + (32 * arg5.length) + 192
                while ceil32(arg4.length) + (32 * arg5.length) + (32 * mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) + 192 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][6].field_0 = mem[idx + 16 len 16] * 256^s or !(test266151307() * 256^s) and stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][6].field_0
                    s = s + (16 * -s + 31 / 32) + (-1 * s * s + 31 / 32) + 16
                    idx = idx + 32
                    continue 
                idx = floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1
                s = sha3(sha3(sha3(address(msg.sender), block.timestamp, uint32(stor3.field_224), stor2), 1) + 6)
                while idx:
                    stor[s] = !(test266151307() * 256^idx) and stor[s]
                    idx = idx + (16 * -idx + 31 / 32) + (-1 * idx * idx + 31 / 32) + 16
                    s = (idx + 31 / 32) + s
                    continue 
                idx = (floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + Mask(248, 4, None + -(floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + 17) + 31 / 32 * Mask(252, 0, None + -(floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + 17) >> 4
                while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 + 1 / 2 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 6].field_0 = 0
                    idx = idx + 1
                    continue 
                _9913 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg9
                _9971 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_9913 + 132] = 32
                mem[_9913 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg8):
                    revert with 0, 'Address: call to non-contract'
                _10171 = mem[_9971]
                mem[_9913 + 196 len ceil32(mem[_9971])] = mem[_9971 + 32 len ceil32(mem[_9971])]
                if ceil32(_10171) <= _10171:
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_9913 + 200 len _10171 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_9913 + 196] = arg9
                            mem[_9913 + 228] = block.timestamp
                            mem[_9913 + 260] = arg8
                            mem[_9913 + 292] = 320
                            mem[_9913 + 516] = mem[96]
                            mem[_9913 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9913 + 324] = arg2
                                mem[_9913 + 356] = arg3
                                mem[_9913 + 388] = ceil32(mem[96]) + 352
                                _12205 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + 580
                                while idx < _12205:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 420] = ceil32(mem[96]) + (32 * _12205) + 384
                                _12839 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + (32 * _12205) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + (32 * _12205) + 612
                                while idx < _12839:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 452] = arg11
                                mem[_9913 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + 548 len ceil32(mem[96]) + (32 * _12205) + (32 * _12839) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12205) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9913 + 548] = 0
                                mem[_9913 + 324] = arg2
                                mem[_9913 + 356] = arg3
                                mem[_9913 + 388] = ceil32(mem[96]) + 352
                                _12206 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + 580
                                while idx < _12206:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 420] = ceil32(mem[96]) + (32 * _12206) + 384
                                _12840 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + (32 * _12206) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + (32 * _12206) + 612
                                while idx < _12840:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 452] = arg11
                                mem[_9913 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + 548 len ceil32(mem[96]) + (32 * _12206) + (32 * _12840) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12206) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_9913 + 196] = arg9
                            mem[_9913 + 228] = block.timestamp
                            mem[_9913 + 260] = arg8
                            mem[_9913 + 292] = 320
                            mem[_9913 + 516] = mem[96]
                            mem[_9913 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var131001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9913 + 324] = arg2
                                mem[_9913 + 356] = arg3
                                mem[_9913 + 388] = ceil32(mem[96]) + 352
                                _12207 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + 580
                                while idx < _12207:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 420] = ceil32(mem[96]) + (32 * _12207) + 384
                                _12841 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + (32 * _12207) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + (32 * _12207) + 612
                                while idx < _12841:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 452] = arg11
                                mem[_9913 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + 548 len ceil32(mem[96]) + (32 * _12207) + (32 * _12841) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12207) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9913 + 548] = 0
                                mem[_9913 + 324] = arg2
                                mem[_9913 + 356] = arg3
                                mem[_9913 + 388] = ceil32(mem[96]) + 352
                                _12208 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + 580
                                while idx < _12208:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 420] = ceil32(mem[96]) + (32 * _12208) + 384
                                _12842 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + (32 * _12208) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + (32 * _12208) + 612
                                while idx < _12842:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 452] = arg11
                                mem[_9913 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + 548 len ceil32(mem[96]) + (32 * _12208) + (32 * _12842) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12208) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_9913 + 196] = return_data.size
                        mem[_9913 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_9913 + ceil32(return_data.size) + 197] = arg9
                            mem[_9913 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_9913 + ceil32(return_data.size) + 261] = arg8
                            mem[_9913 + ceil32(return_data.size) + 293] = 320
                            mem[_9913 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9913 + ceil32(return_data.size) + 325] = arg2
                                mem[_9913 + ceil32(return_data.size) + 357] = arg3
                                mem[_9913 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12211 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 581
                                while idx < _12211:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12211) + 384
                                _12843 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12211) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12211) + 613
                                while idx < _12843:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12211) + (32 * _12843) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12211) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9913 + ceil32(return_data.size) + 549] = 0
                                mem[_9913 + ceil32(return_data.size) + 325] = arg2
                                mem[_9913 + ceil32(return_data.size) + 357] = arg3
                                mem[_9913 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12212 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 581
                                while idx < _12212:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12212) + 384
                                _12844 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12212) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12212) + 613
                                while idx < _12844:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12212) + (32 * _12844) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12212) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_9913 + 228] == bool(mem[_9913 + 228])
                            if not mem[_9913 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_9913 + ceil32(return_data.size) + 197] = arg9
                            mem[_9913 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_9913 + ceil32(return_data.size) + 261] = arg8
                            mem[_9913 + ceil32(return_data.size) + 293] = 320
                            mem[_9913 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var131001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9913 + ceil32(return_data.size) + 325] = arg2
                                mem[_9913 + ceil32(return_data.size) + 357] = arg3
                                mem[_9913 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12213 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 581
                                while idx < _12213:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12213) + 384
                                _12845 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12213) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12213) + 613
                                while idx < _12845:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12213) + (32 * _12845) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12213) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9913 + ceil32(return_data.size) + 549] = 0
                                mem[_9913 + ceil32(return_data.size) + 325] = arg2
                                mem[_9913 + ceil32(return_data.size) + 357] = arg3
                                mem[_9913 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12214 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 581
                                while idx < _12214:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12214) + 384
                                _12846 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12214) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12214) + 613
                                while idx < _12846:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12214) + (32 * _12846) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12214) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                else:
                    mem[_10171 + _9913 + 196] = 0
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_9913 + 200 len _10171 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_9913 + 196] = arg9
                            mem[_9913 + 228] = block.timestamp
                            mem[_9913 + 260] = arg8
                            mem[_9913 + 292] = 320
                            mem[_9913 + 516] = mem[96]
                            mem[_9913 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9913 + 324] = arg2
                                mem[_9913 + 356] = arg3
                                mem[_9913 + 388] = ceil32(mem[96]) + 352
                                _12217 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + 580
                                while idx < _12217:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 420] = ceil32(mem[96]) + (32 * _12217) + 384
                                _12847 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + (32 * _12217) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + (32 * _12217) + 612
                                while idx < _12847:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 452] = arg11
                                mem[_9913 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + 548 len ceil32(mem[96]) + (32 * _12217) + (32 * _12847) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12217) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9913 + 548] = 0
                                mem[_9913 + 324] = arg2
                                mem[_9913 + 356] = arg3
                                mem[_9913 + 388] = ceil32(mem[96]) + 352
                                _12218 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + 580
                                while idx < _12218:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 420] = ceil32(mem[96]) + (32 * _12218) + 384
                                _12848 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + (32 * _12218) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + (32 * _12218) + 612
                                while idx < _12848:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 452] = arg11
                                mem[_9913 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + 548 len ceil32(mem[96]) + (32 * _12218) + (32 * _12848) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12218) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_9913 + 196] = arg9
                            mem[_9913 + 228] = block.timestamp
                            mem[_9913 + 260] = arg8
                            mem[_9913 + 292] = 320
                            mem[_9913 + 516] = mem[96]
                            mem[_9913 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var131001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9913 + 324] = arg2
                                mem[_9913 + 356] = arg3
                                mem[_9913 + 388] = ceil32(mem[96]) + 352
                                _12219 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + 580
                                while idx < _12219:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 420] = ceil32(mem[96]) + (32 * _12219) + 384
                                _12849 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + (32 * _12219) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + (32 * _12219) + 612
                                while idx < _12849:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 452] = arg11
                                mem[_9913 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + 548 len ceil32(mem[96]) + (32 * _12219) + (32 * _12849) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12219) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9913 + 548] = 0
                                mem[_9913 + 324] = arg2
                                mem[_9913 + 356] = arg3
                                mem[_9913 + 388] = ceil32(mem[96]) + 352
                                _12220 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + 580
                                while idx < _12220:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 420] = ceil32(mem[96]) + (32 * _12220) + 384
                                _12850 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + (32 * _12220) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + (32 * _12220) + 612
                                while idx < _12850:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + 452] = arg11
                                mem[_9913 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + 548 len ceil32(mem[96]) + (32 * _12220) + (32 * _12850) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12220) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_9913 + 196] = return_data.size
                        mem[_9913 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_9913 + ceil32(return_data.size) + 197] = arg9
                            mem[_9913 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_9913 + ceil32(return_data.size) + 261] = arg8
                            mem[_9913 + ceil32(return_data.size) + 293] = 320
                            mem[_9913 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9913 + ceil32(return_data.size) + 325] = arg2
                                mem[_9913 + ceil32(return_data.size) + 357] = arg3
                                mem[_9913 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12223 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 581
                                while idx < _12223:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12223) + 384
                                _12851 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12223) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12223) + 613
                                while idx < _12851:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12223) + (32 * _12851) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12223) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9913 + ceil32(return_data.size) + 549] = 0
                                mem[_9913 + ceil32(return_data.size) + 325] = arg2
                                mem[_9913 + ceil32(return_data.size) + 357] = arg3
                                mem[_9913 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12224 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 581
                                while idx < _12224:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12224) + 384
                                _12852 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12224) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12224) + 613
                                while idx < _12852:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12224) + (32 * _12852) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12224) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_9913 + 228] == bool(mem[_9913 + 228])
                            if not mem[_9913 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_9913 + ceil32(return_data.size) + 197] = arg9
                            mem[_9913 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_9913 + ceil32(return_data.size) + 261] = arg8
                            mem[_9913 + ceil32(return_data.size) + 293] = 320
                            mem[_9913 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var131001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9913 + ceil32(return_data.size) + 325] = arg2
                                mem[_9913 + ceil32(return_data.size) + 357] = arg3
                                mem[_9913 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12225 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 581
                                while idx < _12225:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12225) + 384
                                _12853 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12225) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12225) + 613
                                while idx < _12853:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12225) + (32 * _12853) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12225) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9913 + ceil32(return_data.size) + 549] = 0
                                mem[_9913 + ceil32(return_data.size) + 325] = arg2
                                mem[_9913 + ceil32(return_data.size) + 357] = arg3
                                mem[_9913 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12226 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + 581
                                while idx < _12226:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9913 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12226) + 384
                                _12854 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12226) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9913 + ceil32(return_data.size) + (32 * _12226) + 613
                                while idx < _12854:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9913 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12226) + (32 * _12854) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12226) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
        else:
            s = 0
            idx = ceil32(arg4.length) + 160
            while ceil32(arg4.length) + (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 160 > idx:
                address(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][s + 4].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 31) >> 5
            while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1024 > idx:
                stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            uint8(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_2304) = 0
            _7199 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            idx = 0
            while idx < _7199:
                if idx >= mem[ceil32(arg4.length) + 128]:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] != address(stor3.field_0):
                    if idx >= mem[ceil32(arg4.length) + 128]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + ceil32(arg4.length) + 172 len 20])
                    staticcall mem[(32 * idx) + ceil32(arg4.length) + 172 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7227 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_7227] <= 0:
                        revert with 0, 'Not a valid ERC20'
                stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1280++
                mem[0] = sha3(sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2), 1) + 5
                stor[uint255(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1281) + ('array', 5, ('map', ('data', 'msg.sender', 'timestamp', ('type', 32, ('field', 224, ('stor', ('name', 'stor3', 3)))), ('stor', ('name', 'stor2', 2))), ('name', 'stor1', 1)))].field_0 = stor[uint255(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1281) + ('array', 5, ('map', ('data', 'msg.sender', 'timestamp', ('type', 32, ('field', 224, ('stor', ('name', 'stor3', 3)))), ('stor', ('name', 'stor2', 2))), ('name', 'stor1', 1)))].field_0 and !(test266151307() * 256^(16 * bool(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1280)))
                if idx == -1:
                    revert with 0, 17
                _7199 = mem[ceil32(arg4.length) + 128]
                idx = idx + 1
                continue 
            stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
            mem[0] = sha3(sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2), 1) + 6
            if not mem[ceil32(arg4.length) + (32 * arg5.length) + 160]:
                idx = 0
                while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 + 1 / 2 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 6].field_0 = 0
                    idx = idx + 1
                    continue 
                _8575 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg9
                _8583 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_8575 + 132] = 32
                mem[_8575 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg8):
                    revert with 0, 'Address: call to non-contract'
                _8667 = mem[_8583]
                mem[_8575 + 196 len ceil32(mem[_8583])] = mem[_8583 + 32 len ceil32(mem[_8583])]
                if ceil32(_8667) <= _8667:
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_8575 + 200 len _8667 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_8575 + 196] = arg9
                            mem[_8575 + 228] = block.timestamp
                            mem[_8575 + 260] = arg8
                            mem[_8575 + 292] = 320
                            mem[_8575 + 516] = mem[96]
                            mem[_8575 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8575 + 324] = arg2
                                mem[_8575 + 356] = arg3
                                mem[_8575 + 388] = ceil32(mem[96]) + 352
                                _11185 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + 580
                                while idx < _11185:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 420] = ceil32(mem[96]) + (32 * _11185) + 384
                                _12151 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + (32 * _11185) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + (32 * _11185) + 612
                                while idx < _12151:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 452] = arg11
                                mem[_8575 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + 548 len ceil32(mem[96]) + (32 * _11185) + (32 * _12151) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11185) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8575 + 548] = 0
                                mem[_8575 + 324] = arg2
                                mem[_8575 + 356] = arg3
                                mem[_8575 + 388] = ceil32(mem[96]) + 352
                                _11186 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + 580
                                while idx < _11186:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 420] = ceil32(mem[96]) + (32 * _11186) + 384
                                _12152 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + (32 * _11186) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + (32 * _11186) + 612
                                while idx < _12152:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 452] = arg11
                                mem[_8575 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + 548 len ceil32(mem[96]) + (32 * _11186) + (32 * _12152) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11186) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_8575 + 196] = arg9
                            mem[_8575 + 228] = block.timestamp
                            mem[_8575 + 260] = arg8
                            mem[_8575 + 292] = 320
                            mem[_8575 + 516] = mem[96]
                            mem[_8575 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var129001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8575 + 324] = arg2
                                mem[_8575 + 356] = arg3
                                mem[_8575 + 388] = ceil32(mem[96]) + 352
                                _11187 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + 580
                                while idx < _11187:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 420] = ceil32(mem[96]) + (32 * _11187) + 384
                                _12153 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + (32 * _11187) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + (32 * _11187) + 612
                                while idx < _12153:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 452] = arg11
                                mem[_8575 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + 548 len ceil32(mem[96]) + (32 * _11187) + (32 * _12153) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11187) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8575 + 548] = 0
                                mem[_8575 + 324] = arg2
                                mem[_8575 + 356] = arg3
                                mem[_8575 + 388] = ceil32(mem[96]) + 352
                                _11188 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + 580
                                while idx < _11188:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 420] = ceil32(mem[96]) + (32 * _11188) + 384
                                _12154 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + (32 * _11188) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + (32 * _11188) + 612
                                while idx < _12154:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 452] = arg11
                                mem[_8575 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + 548 len ceil32(mem[96]) + (32 * _11188) + (32 * _12154) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11188) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_8575 + 196] = return_data.size
                        mem[_8575 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_8575 + ceil32(return_data.size) + 197] = arg9
                            mem[_8575 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_8575 + ceil32(return_data.size) + 261] = arg8
                            mem[_8575 + ceil32(return_data.size) + 293] = 320
                            mem[_8575 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8575 + ceil32(return_data.size) + 325] = arg2
                                mem[_8575 + ceil32(return_data.size) + 357] = arg3
                                mem[_8575 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11191 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 581
                                while idx < _11191:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11191) + 384
                                _12155 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11191) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11191) + 613
                                while idx < _12155:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11191) + (32 * _12155) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11191) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8575 + ceil32(return_data.size) + 549] = 0
                                mem[_8575 + ceil32(return_data.size) + 325] = arg2
                                mem[_8575 + ceil32(return_data.size) + 357] = arg3
                                mem[_8575 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11192 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 581
                                while idx < _11192:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11192) + 384
                                _12156 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11192) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11192) + 613
                                while idx < _12156:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11192) + (32 * _12156) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11192) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_8575 + 228] == bool(mem[_8575 + 228])
                            if not mem[_8575 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_8575 + ceil32(return_data.size) + 197] = arg9
                            mem[_8575 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_8575 + ceil32(return_data.size) + 261] = arg8
                            mem[_8575 + ceil32(return_data.size) + 293] = 320
                            mem[_8575 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var129001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8575 + ceil32(return_data.size) + 325] = arg2
                                mem[_8575 + ceil32(return_data.size) + 357] = arg3
                                mem[_8575 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11193 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 581
                                while idx < _11193:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11193) + 384
                                _12157 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11193) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11193) + 613
                                while idx < _12157:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11193) + (32 * _12157) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11193) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8575 + ceil32(return_data.size) + 549] = 0
                                mem[_8575 + ceil32(return_data.size) + 325] = arg2
                                mem[_8575 + ceil32(return_data.size) + 357] = arg3
                                mem[_8575 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11194 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 581
                                while idx < _11194:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11194) + 384
                                _12158 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11194) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11194) + 613
                                while idx < _12158:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11194) + (32 * _12158) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11194) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                else:
                    mem[_8667 + _8575 + 196] = 0
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_8575 + 200 len _8667 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_8575 + 196] = arg9
                            mem[_8575 + 228] = block.timestamp
                            mem[_8575 + 260] = arg8
                            mem[_8575 + 292] = 320
                            mem[_8575 + 516] = mem[96]
                            mem[_8575 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8575 + 324] = arg2
                                mem[_8575 + 356] = arg3
                                mem[_8575 + 388] = ceil32(mem[96]) + 352
                                _11197 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + 580
                                while idx < _11197:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 420] = ceil32(mem[96]) + (32 * _11197) + 384
                                _12159 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + (32 * _11197) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + (32 * _11197) + 612
                                while idx < _12159:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 452] = arg11
                                mem[_8575 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + 548 len ceil32(mem[96]) + (32 * _11197) + (32 * _12159) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11197) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8575 + 548] = 0
                                mem[_8575 + 324] = arg2
                                mem[_8575 + 356] = arg3
                                mem[_8575 + 388] = ceil32(mem[96]) + 352
                                _11198 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + 580
                                while idx < _11198:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 420] = ceil32(mem[96]) + (32 * _11198) + 384
                                _12160 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + (32 * _11198) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + (32 * _11198) + 612
                                while idx < _12160:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 452] = arg11
                                mem[_8575 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + 548 len ceil32(mem[96]) + (32 * _11198) + (32 * _12160) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11198) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_8575 + 196] = arg9
                            mem[_8575 + 228] = block.timestamp
                            mem[_8575 + 260] = arg8
                            mem[_8575 + 292] = 320
                            mem[_8575 + 516] = mem[96]
                            mem[_8575 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var129001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8575 + 324] = arg2
                                mem[_8575 + 356] = arg3
                                mem[_8575 + 388] = ceil32(mem[96]) + 352
                                _11199 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + 580
                                while idx < _11199:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 420] = ceil32(mem[96]) + (32 * _11199) + 384
                                _12161 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + (32 * _11199) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + (32 * _11199) + 612
                                while idx < _12161:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 452] = arg11
                                mem[_8575 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + 548 len ceil32(mem[96]) + (32 * _11199) + (32 * _12161) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11199) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8575 + 548] = 0
                                mem[_8575 + 324] = arg2
                                mem[_8575 + 356] = arg3
                                mem[_8575 + 388] = ceil32(mem[96]) + 352
                                _11200 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + 580
                                while idx < _11200:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 420] = ceil32(mem[96]) + (32 * _11200) + 384
                                _12162 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + (32 * _11200) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + (32 * _11200) + 612
                                while idx < _12162:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + 452] = arg11
                                mem[_8575 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + 548 len ceil32(mem[96]) + (32 * _11200) + (32 * _12162) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11200) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_8575 + 196] = return_data.size
                        mem[_8575 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_8575 + ceil32(return_data.size) + 197] = arg9
                            mem[_8575 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_8575 + ceil32(return_data.size) + 261] = arg8
                            mem[_8575 + ceil32(return_data.size) + 293] = 320
                            mem[_8575 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8575 + ceil32(return_data.size) + 325] = arg2
                                mem[_8575 + ceil32(return_data.size) + 357] = arg3
                                mem[_8575 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11203 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 581
                                while idx < _11203:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11203) + 384
                                _12163 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11203) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11203) + 613
                                while idx < _12163:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11203) + (32 * _12163) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11203) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8575 + ceil32(return_data.size) + 549] = 0
                                mem[_8575 + ceil32(return_data.size) + 325] = arg2
                                mem[_8575 + ceil32(return_data.size) + 357] = arg3
                                mem[_8575 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11204 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 581
                                while idx < _11204:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11204) + 384
                                _12164 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11204) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11204) + 613
                                while idx < _12164:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11204) + (32 * _12164) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11204) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_8575 + 228] == bool(mem[_8575 + 228])
                            if not mem[_8575 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_8575 + ceil32(return_data.size) + 197] = arg9
                            mem[_8575 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_8575 + ceil32(return_data.size) + 261] = arg8
                            mem[_8575 + ceil32(return_data.size) + 293] = 320
                            mem[_8575 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var129001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8575 + ceil32(return_data.size) + 325] = arg2
                                mem[_8575 + ceil32(return_data.size) + 357] = arg3
                                mem[_8575 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11205 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 581
                                while idx < _11205:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11205) + 384
                                _12165 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11205) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11205) + 613
                                while idx < _12165:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11205) + (32 * _12165) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11205) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8575 + ceil32(return_data.size) + 549] = 0
                                mem[_8575 + ceil32(return_data.size) + 325] = arg2
                                mem[_8575 + ceil32(return_data.size) + 357] = arg3
                                mem[_8575 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11206 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + 581
                                while idx < _11206:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8575 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11206) + 384
                                _12166 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11206) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8575 + ceil32(return_data.size) + (32 * _11206) + 613
                                while idx < _12166:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8575 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11206) + (32 * _12166) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11206) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
            else:
                s = 0
                idx = ceil32(arg4.length) + (32 * arg5.length) + 192
                while ceil32(arg4.length) + (32 * arg5.length) + (32 * mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) + 192 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][6].field_0 = mem[idx + 16 len 16] * 256^s or !(test266151307() * 256^s) and stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][6].field_0
                    s = s + (16 * -s + 31 / 32) + (-1 * s * s + 31 / 32) + 16
                    idx = idx + 32
                    continue 
                idx = floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1
                s = sha3(sha3(sha3(address(msg.sender), block.timestamp, uint32(stor3.field_224), stor2), 1) + 6)
                while idx:
                    stor[s] = !(test266151307() * 256^idx) and stor[s]
                    idx = idx + (16 * -idx + 31 / 32) + (-1 * idx * idx + 31 / 32) + 16
                    s = (idx + 31 / 32) + s
                    continue 
                idx = (floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + Mask(248, 4, None + -(floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + 17) + 31 / 32 * Mask(252, 0, None + -(floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + 17) >> 4
                while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 + 1 / 2 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 6].field_0 = 0
                    idx = idx + 1
                    continue 
                _11161 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg9
                _11249 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_11161 + 132] = 32
                mem[_11161 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg8):
                    revert with 0, 'Address: call to non-contract'
                _11475 = mem[_11249]
                mem[_11161 + 196 len ceil32(mem[_11249])] = mem[_11249 + 32 len ceil32(mem[_11249])]
                if ceil32(_11475) <= _11475:
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_11161 + 200 len _11475 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_11161 + 196] = arg9
                            mem[_11161 + 228] = block.timestamp
                            mem[_11161 + 260] = arg8
                            mem[_11161 + 292] = 320
                            mem[_11161 + 516] = mem[96]
                            mem[_11161 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var127001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11161 + 324] = arg2
                                mem[_11161 + 356] = arg3
                                mem[_11161 + 388] = ceil32(mem[96]) + 352
                                _12921 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + 580
                                while idx < _12921:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 420] = ceil32(mem[96]) + (32 * _12921) + 384
                                _13223 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + (32 * _12921) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + (32 * _12921) + 612
                                while idx < _13223:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 452] = arg11
                                mem[_11161 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + 548 len ceil32(mem[96]) + (32 * _12921) + (32 * _13223) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12921) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11161 + 548] = 0
                                mem[_11161 + 324] = arg2
                                mem[_11161 + 356] = arg3
                                mem[_11161 + 388] = ceil32(mem[96]) + 352
                                _12922 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + 580
                                while idx < _12922:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 420] = ceil32(mem[96]) + (32 * _12922) + 384
                                _13224 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + (32 * _12922) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + (32 * _12922) + 612
                                while idx < _13224:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 452] = arg11
                                mem[_11161 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + 548 len ceil32(mem[96]) + (32 * _12922) + (32 * _13224) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12922) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_11161 + 196] = arg9
                            mem[_11161 + 228] = block.timestamp
                            mem[_11161 + 260] = arg8
                            mem[_11161 + 292] = 320
                            mem[_11161 + 516] = mem[96]
                            mem[_11161 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var134001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11161 + 324] = arg2
                                mem[_11161 + 356] = arg3
                                mem[_11161 + 388] = ceil32(mem[96]) + 352
                                _12923 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + 580
                                while idx < _12923:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 420] = ceil32(mem[96]) + (32 * _12923) + 384
                                _13225 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + (32 * _12923) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + (32 * _12923) + 612
                                while idx < _13225:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 452] = arg11
                                mem[_11161 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + 548 len ceil32(mem[96]) + (32 * _12923) + (32 * _13225) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12923) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11161 + 548] = 0
                                mem[_11161 + 324] = arg2
                                mem[_11161 + 356] = arg3
                                mem[_11161 + 388] = ceil32(mem[96]) + 352
                                _12924 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + 580
                                while idx < _12924:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 420] = ceil32(mem[96]) + (32 * _12924) + 384
                                _13226 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + (32 * _12924) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + (32 * _12924) + 612
                                while idx < _13226:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 452] = arg11
                                mem[_11161 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + 548 len ceil32(mem[96]) + (32 * _12924) + (32 * _13226) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12924) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_11161 + 196] = return_data.size
                        mem[_11161 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_11161 + ceil32(return_data.size) + 197] = arg9
                            mem[_11161 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_11161 + ceil32(return_data.size) + 261] = arg8
                            mem[_11161 + ceil32(return_data.size) + 293] = 320
                            mem[_11161 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var127001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11161 + ceil32(return_data.size) + 325] = arg2
                                mem[_11161 + ceil32(return_data.size) + 357] = arg3
                                mem[_11161 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12927 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 581
                                while idx < _12927:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12927) + 384
                                _13227 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12927) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12927) + 613
                                while idx < _13227:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12927) + (32 * _13227) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12927) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11161 + ceil32(return_data.size) + 549] = 0
                                mem[_11161 + ceil32(return_data.size) + 325] = arg2
                                mem[_11161 + ceil32(return_data.size) + 357] = arg3
                                mem[_11161 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12928 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 581
                                while idx < _12928:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12928) + 384
                                _13228 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12928) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12928) + 613
                                while idx < _13228:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12928) + (32 * _13228) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12928) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_11161 + 228] == bool(mem[_11161 + 228])
                            if not mem[_11161 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_11161 + ceil32(return_data.size) + 197] = arg9
                            mem[_11161 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_11161 + ceil32(return_data.size) + 261] = arg8
                            mem[_11161 + ceil32(return_data.size) + 293] = 320
                            mem[_11161 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var134001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11161 + ceil32(return_data.size) + 325] = arg2
                                mem[_11161 + ceil32(return_data.size) + 357] = arg3
                                mem[_11161 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12929 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 581
                                while idx < _12929:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12929) + 384
                                _13229 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12929) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12929) + 613
                                while idx < _13229:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12929) + (32 * _13229) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12929) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11161 + ceil32(return_data.size) + 549] = 0
                                mem[_11161 + ceil32(return_data.size) + 325] = arg2
                                mem[_11161 + ceil32(return_data.size) + 357] = arg3
                                mem[_11161 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12930 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 581
                                while idx < _12930:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12930) + 384
                                _13230 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12930) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12930) + 613
                                while idx < _13230:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12930) + (32 * _13230) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12930) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                else:
                    mem[_11475 + _11161 + 196] = 0
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_11161 + 200 len _11475 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_11161 + 196] = arg9
                            mem[_11161 + 228] = block.timestamp
                            mem[_11161 + 260] = arg8
                            mem[_11161 + 292] = 320
                            mem[_11161 + 516] = mem[96]
                            mem[_11161 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var127001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11161 + 324] = arg2
                                mem[_11161 + 356] = arg3
                                mem[_11161 + 388] = ceil32(mem[96]) + 352
                                _12933 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + 580
                                while idx < _12933:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 420] = ceil32(mem[96]) + (32 * _12933) + 384
                                _13231 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + (32 * _12933) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + (32 * _12933) + 612
                                while idx < _13231:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 452] = arg11
                                mem[_11161 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + 548 len ceil32(mem[96]) + (32 * _12933) + (32 * _13231) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12933) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11161 + 548] = 0
                                mem[_11161 + 324] = arg2
                                mem[_11161 + 356] = arg3
                                mem[_11161 + 388] = ceil32(mem[96]) + 352
                                _12934 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + 580
                                while idx < _12934:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 420] = ceil32(mem[96]) + (32 * _12934) + 384
                                _13232 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + (32 * _12934) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + (32 * _12934) + 612
                                while idx < _13232:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 452] = arg11
                                mem[_11161 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + 548 len ceil32(mem[96]) + (32 * _12934) + (32 * _13232) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12934) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_11161 + 196] = arg9
                            mem[_11161 + 228] = block.timestamp
                            mem[_11161 + 260] = arg8
                            mem[_11161 + 292] = 320
                            mem[_11161 + 516] = mem[96]
                            mem[_11161 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var134001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11161 + 324] = arg2
                                mem[_11161 + 356] = arg3
                                mem[_11161 + 388] = ceil32(mem[96]) + 352
                                _12935 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + 580
                                while idx < _12935:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 420] = ceil32(mem[96]) + (32 * _12935) + 384
                                _13233 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + (32 * _12935) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + (32 * _12935) + 612
                                while idx < _13233:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 452] = arg11
                                mem[_11161 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + 548 len ceil32(mem[96]) + (32 * _12935) + (32 * _13233) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12935) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11161 + 548] = 0
                                mem[_11161 + 324] = arg2
                                mem[_11161 + 356] = arg3
                                mem[_11161 + 388] = ceil32(mem[96]) + 352
                                _12936 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + 580
                                while idx < _12936:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 420] = ceil32(mem[96]) + (32 * _12936) + 384
                                _13234 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + (32 * _12936) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + (32 * _12936) + 612
                                while idx < _13234:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + 452] = arg11
                                mem[_11161 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + 548 len ceil32(mem[96]) + (32 * _12936) + (32 * _13234) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12936) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_11161 + 196] = return_data.size
                        mem[_11161 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_11161 + ceil32(return_data.size) + 197] = arg9
                            mem[_11161 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_11161 + ceil32(return_data.size) + 261] = arg8
                            mem[_11161 + ceil32(return_data.size) + 293] = 320
                            mem[_11161 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var127001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11161 + ceil32(return_data.size) + 325] = arg2
                                mem[_11161 + ceil32(return_data.size) + 357] = arg3
                                mem[_11161 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12939 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 581
                                while idx < _12939:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12939) + 384
                                _13235 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12939) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12939) + 613
                                while idx < _13235:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12939) + (32 * _13235) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12939) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11161 + ceil32(return_data.size) + 549] = 0
                                mem[_11161 + ceil32(return_data.size) + 325] = arg2
                                mem[_11161 + ceil32(return_data.size) + 357] = arg3
                                mem[_11161 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12940 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 581
                                while idx < _12940:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12940) + 384
                                _13236 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12940) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12940) + 613
                                while idx < _13236:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12940) + (32 * _13236) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12940) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_11161 + 228] == bool(mem[_11161 + 228])
                            if not mem[_11161 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_11161 + ceil32(return_data.size) + 197] = arg9
                            mem[_11161 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_11161 + ceil32(return_data.size) + 261] = arg8
                            mem[_11161 + ceil32(return_data.size) + 293] = 320
                            mem[_11161 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var134001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11161 + ceil32(return_data.size) + 325] = arg2
                                mem[_11161 + ceil32(return_data.size) + 357] = arg3
                                mem[_11161 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12941 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 581
                                while idx < _12941:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12941) + 384
                                _13237 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12941) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12941) + 613
                                while idx < _13237:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12941) + (32 * _13237) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12941) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11161 + ceil32(return_data.size) + 549] = 0
                                mem[_11161 + ceil32(return_data.size) + 325] = arg2
                                mem[_11161 + ceil32(return_data.size) + 357] = arg3
                                mem[_11161 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12942 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + 581
                                while idx < _12942:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11161 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12942) + 384
                                _13238 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12942) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11161 + ceil32(return_data.size) + (32 * _12942) + 613
                                while idx < _13238:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11161 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12942) + (32 * _13238) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12942) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
    else:
        if arg7:
            revert with 0, 'End time should be earlier than unlock time'
        if arg10 > arg9:
            revert with 0, 'Limit needs to be less than or equal to the total supply'
        if arg9 >= 0x100000000000000000000000000000000:
            revert with 0, 'No more than 2^128 tokens(incluidng decimals) allowed'
        if Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] <= 0:
            revert with 0, 'Exchange token addresses need to be set'
        if Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if arg6.length != 2 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
            revert with 0, 'Size of ratios = 2 * size of exchange_addrs'
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = address(msg.sender)
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 244] = block.timestamp
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 276] = uint32(stor3.field_224) << 224
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 280] = stor2
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 88
        mem[32] = 1
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 312] = arg11
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 344] = 0
        address(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_0) = arg11
        stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_160 % 1099511627776 = 0
        stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_256 % 1 = 0
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 376] = uint128(arg9)
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 408] = uint128(arg10)
        uint128(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_256) = uint128(arg9)
        uint128(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_384) = uint128(arg10)
        mem[64] = ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 568
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 440] = arg8
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 472] = uint32(arg2)
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 504] = uint32(arg3)
        mem[ceil32(arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 536] = uint32(arg7)
        address(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_512) = arg8
        uint32(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_672) = uint32(arg2)
        uint32(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_704) = uint32(arg3)
        uint32(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_736) = uint32(arg7)
        address(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_768) = msg.sender
        stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1024 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[0] = sha3(sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2), 1) + 4
        if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
            idx = 0
            while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1024 > idx:
                stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            uint8(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_2304) = 0
            _5800 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            idx = 0
            while idx < _5800:
                if idx >= mem[ceil32(arg4.length) + 128]:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] != address(stor3.field_0):
                    if idx >= mem[ceil32(arg4.length) + 128]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + ceil32(arg4.length) + 172 len 20])
                    staticcall mem[(32 * idx) + ceil32(arg4.length) + 172 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5830 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_5830] <= 0:
                        revert with 0, 'Not a valid ERC20'
                stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1280++
                mem[0] = sha3(sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2), 1) + 5
                stor[uint255(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1281) + ('array', 5, ('map', ('data', 'msg.sender', 'timestamp', ('type', 32, ('field', 224, ('stor', ('name', 'stor3', 3)))), ('stor', ('name', 'stor2', 2))), ('name', 'stor1', 1)))].field_0 = stor[uint255(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1281) + ('array', 5, ('map', ('data', 'msg.sender', 'timestamp', ('type', 32, ('field', 224, ('stor', ('name', 'stor3', 3)))), ('stor', ('name', 'stor2', 2))), ('name', 'stor1', 1)))].field_0 and !(test266151307() * 256^(16 * bool(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1280)))
                if idx == -1:
                    revert with 0, 17
                _5800 = mem[ceil32(arg4.length) + 128]
                idx = idx + 1
                continue 
            stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
            mem[0] = sha3(sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2), 1) + 6
            if not mem[ceil32(arg4.length) + (32 * arg5.length) + 160]:
                idx = 0
                while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 + 1 / 2 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 6].field_0 = 0
                    idx = idx + 1
                    continue 
                _7219 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg9
                _7228 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_7219 + 132] = 32
                mem[_7219 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg8):
                    revert with 0, 'Address: call to non-contract'
                _7271 = mem[_7228]
                mem[_7219 + 196 len ceil32(mem[_7228])] = mem[_7228 + 32 len ceil32(mem[_7228])]
                if ceil32(_7271) <= _7271:
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_7219 + 200 len _7271 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_7219 + 196] = arg9
                            mem[_7219 + 228] = block.timestamp
                            mem[_7219 + 260] = arg8
                            mem[_7219 + 292] = 320
                            mem[_7219 + 516] = mem[96]
                            mem[_7219 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7219 + 324] = arg2
                                mem[_7219 + 356] = arg3
                                mem[_7219 + 388] = ceil32(mem[96]) + 352
                                _9947 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + 580
                                while idx < _9947:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 420] = ceil32(mem[96]) + (32 * _9947) + 384
                                _11143 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + (32 * _9947) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + (32 * _9947) + 612
                                while idx < _11143:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 452] = arg11
                                mem[_7219 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + 548 len ceil32(mem[96]) + (32 * _9947) + (32 * _11143) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9947) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7219 + 548] = 0
                                mem[_7219 + 324] = arg2
                                mem[_7219 + 356] = arg3
                                mem[_7219 + 388] = ceil32(mem[96]) + 352
                                _9948 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + 580
                                while idx < _9948:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 420] = ceil32(mem[96]) + (32 * _9948) + 384
                                _11144 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + (32 * _9948) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + (32 * _9948) + 612
                                while idx < _11144:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 452] = arg11
                                mem[_7219 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + 548 len ceil32(mem[96]) + (32 * _9948) + (32 * _11144) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9948) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_7219 + 196] = arg9
                            mem[_7219 + 228] = block.timestamp
                            mem[_7219 + 260] = arg8
                            mem[_7219 + 292] = 320
                            mem[_7219 + 516] = mem[96]
                            mem[_7219 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var127001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7219 + 324] = arg2
                                mem[_7219 + 356] = arg3
                                mem[_7219 + 388] = ceil32(mem[96]) + 352
                                _9949 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + 580
                                while idx < _9949:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 420] = ceil32(mem[96]) + (32 * _9949) + 384
                                _11145 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + (32 * _9949) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + (32 * _9949) + 612
                                while idx < _11145:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 452] = arg11
                                mem[_7219 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + 548 len ceil32(mem[96]) + (32 * _9949) + (32 * _11145) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9949) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7219 + 548] = 0
                                mem[_7219 + 324] = arg2
                                mem[_7219 + 356] = arg3
                                mem[_7219 + 388] = ceil32(mem[96]) + 352
                                _9950 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + 580
                                while idx < _9950:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 420] = ceil32(mem[96]) + (32 * _9950) + 384
                                _11146 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + (32 * _9950) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + (32 * _9950) + 612
                                while idx < _11146:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 452] = arg11
                                mem[_7219 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + 548 len ceil32(mem[96]) + (32 * _9950) + (32 * _11146) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9950) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_7219 + 196] = return_data.size
                        mem[_7219 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_7219 + ceil32(return_data.size) + 197] = arg9
                            mem[_7219 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_7219 + ceil32(return_data.size) + 261] = arg8
                            mem[_7219 + ceil32(return_data.size) + 293] = 320
                            mem[_7219 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7219 + ceil32(return_data.size) + 325] = arg2
                                mem[_7219 + ceil32(return_data.size) + 357] = arg3
                                mem[_7219 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9953 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 581
                                while idx < _9953:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9953) + 384
                                _11147 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9953) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9953) + 613
                                while idx < _11147:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9953) + (32 * _11147) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9953) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7219 + ceil32(return_data.size) + 549] = 0
                                mem[_7219 + ceil32(return_data.size) + 325] = arg2
                                mem[_7219 + ceil32(return_data.size) + 357] = arg3
                                mem[_7219 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9954 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 581
                                while idx < _9954:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9954) + 384
                                _11148 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9954) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9954) + 613
                                while idx < _11148:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9954) + (32 * _11148) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9954) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_7219 + 228] == bool(mem[_7219 + 228])
                            if not mem[_7219 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_7219 + ceil32(return_data.size) + 197] = arg9
                            mem[_7219 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_7219 + ceil32(return_data.size) + 261] = arg8
                            mem[_7219 + ceil32(return_data.size) + 293] = 320
                            mem[_7219 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var127001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7219 + ceil32(return_data.size) + 325] = arg2
                                mem[_7219 + ceil32(return_data.size) + 357] = arg3
                                mem[_7219 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9955 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 581
                                while idx < _9955:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9955) + 384
                                _11149 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9955) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9955) + 613
                                while idx < _11149:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9955) + (32 * _11149) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9955) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7219 + ceil32(return_data.size) + 549] = 0
                                mem[_7219 + ceil32(return_data.size) + 325] = arg2
                                mem[_7219 + ceil32(return_data.size) + 357] = arg3
                                mem[_7219 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9956 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 581
                                while idx < _9956:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9956) + 384
                                _11150 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9956) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9956) + 613
                                while idx < _11150:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9956) + (32 * _11150) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9956) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                else:
                    mem[_7271 + _7219 + 196] = 0
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_7219 + 200 len _7271 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_7219 + 196] = arg9
                            mem[_7219 + 228] = block.timestamp
                            mem[_7219 + 260] = arg8
                            mem[_7219 + 292] = 320
                            mem[_7219 + 516] = mem[96]
                            mem[_7219 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7219 + 324] = arg2
                                mem[_7219 + 356] = arg3
                                mem[_7219 + 388] = ceil32(mem[96]) + 352
                                _9959 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + 580
                                while idx < _9959:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 420] = ceil32(mem[96]) + (32 * _9959) + 384
                                _11151 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + (32 * _9959) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + (32 * _9959) + 612
                                while idx < _11151:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 452] = arg11
                                mem[_7219 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + 548 len ceil32(mem[96]) + (32 * _9959) + (32 * _11151) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9959) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7219 + 548] = 0
                                mem[_7219 + 324] = arg2
                                mem[_7219 + 356] = arg3
                                mem[_7219 + 388] = ceil32(mem[96]) + 352
                                _9960 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + 580
                                while idx < _9960:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 420] = ceil32(mem[96]) + (32 * _9960) + 384
                                _11152 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + (32 * _9960) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + (32 * _9960) + 612
                                while idx < _11152:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 452] = arg11
                                mem[_7219 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + 548 len ceil32(mem[96]) + (32 * _9960) + (32 * _11152) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9960) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_7219 + 196] = arg9
                            mem[_7219 + 228] = block.timestamp
                            mem[_7219 + 260] = arg8
                            mem[_7219 + 292] = 320
                            mem[_7219 + 516] = mem[96]
                            mem[_7219 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var127001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7219 + 324] = arg2
                                mem[_7219 + 356] = arg3
                                mem[_7219 + 388] = ceil32(mem[96]) + 352
                                _9961 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + 580
                                while idx < _9961:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 420] = ceil32(mem[96]) + (32 * _9961) + 384
                                _11153 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + (32 * _9961) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + (32 * _9961) + 612
                                while idx < _11153:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 452] = arg11
                                mem[_7219 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + 548 len ceil32(mem[96]) + (32 * _9961) + (32 * _11153) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9961) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7219 + 548] = 0
                                mem[_7219 + 324] = arg2
                                mem[_7219 + 356] = arg3
                                mem[_7219 + 388] = ceil32(mem[96]) + 352
                                _9962 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + 580
                                while idx < _9962:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 420] = ceil32(mem[96]) + (32 * _9962) + 384
                                _11154 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + (32 * _9962) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + (32 * _9962) + 612
                                while idx < _11154:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + 452] = arg11
                                mem[_7219 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + 548 len ceil32(mem[96]) + (32 * _9962) + (32 * _11154) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9962) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_7219 + 196] = return_data.size
                        mem[_7219 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_7219 + ceil32(return_data.size) + 197] = arg9
                            mem[_7219 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_7219 + ceil32(return_data.size) + 261] = arg8
                            mem[_7219 + ceil32(return_data.size) + 293] = 320
                            mem[_7219 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7219 + ceil32(return_data.size) + 325] = arg2
                                mem[_7219 + ceil32(return_data.size) + 357] = arg3
                                mem[_7219 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9965 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 581
                                while idx < _9965:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9965) + 384
                                _11155 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9965) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9965) + 613
                                while idx < _11155:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9965) + (32 * _11155) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9965) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7219 + ceil32(return_data.size) + 549] = 0
                                mem[_7219 + ceil32(return_data.size) + 325] = arg2
                                mem[_7219 + ceil32(return_data.size) + 357] = arg3
                                mem[_7219 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9966 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 581
                                while idx < _9966:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9966) + 384
                                _11156 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9966) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9966) + 613
                                while idx < _11156:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9966) + (32 * _11156) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9966) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_7219 + 228] == bool(mem[_7219 + 228])
                            if not mem[_7219 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_7219 + ceil32(return_data.size) + 197] = arg9
                            mem[_7219 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_7219 + ceil32(return_data.size) + 261] = arg8
                            mem[_7219 + ceil32(return_data.size) + 293] = 320
                            mem[_7219 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var127001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_7219 + ceil32(return_data.size) + 325] = arg2
                                mem[_7219 + ceil32(return_data.size) + 357] = arg3
                                mem[_7219 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9967 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 581
                                while idx < _9967:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9967) + 384
                                _11157 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9967) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9967) + 613
                                while idx < _11157:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9967) + (32 * _11157) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9967) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _7219 + ceil32(return_data.size) + 549] = 0
                                mem[_7219 + ceil32(return_data.size) + 325] = arg2
                                mem[_7219 + ceil32(return_data.size) + 357] = arg3
                                mem[_7219 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _9968 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + 581
                                while idx < _9968:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7219 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _9968) + 384
                                _11158 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9968) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _7219 + ceil32(return_data.size) + (32 * _9968) + 613
                                while idx < _11158:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_7219 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _9968) + (32 * _11158) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _9968) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
            else:
                s = 0
                idx = ceil32(arg4.length) + (32 * arg5.length) + 192
                while ceil32(arg4.length) + (32 * arg5.length) + (32 * mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) + 192 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][6].field_0 = mem[idx + 16 len 16] * 256^s or !(test266151307() * 256^s) and stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][6].field_0
                    s = s + (16 * -s + 31 / 32) + (-1 * s * s + 31 / 32) + 16
                    idx = idx + 32
                    continue 
                idx = floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1
                s = sha3(sha3(sha3(address(msg.sender), block.timestamp, uint32(stor3.field_224), stor2), 1) + 6)
                while idx:
                    stor[s] = !(test266151307() * 256^idx) and stor[s]
                    idx = idx + (16 * -idx + 31 / 32) + (-1 * idx * idx + 31 / 32) + 16
                    s = (idx + 31 / 32) + s
                    continue 
                idx = (floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + Mask(248, 4, None + -(floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + 17) + 31 / 32 * Mask(252, 0, None + -(floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + 17) >> 4
                while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 + 1 / 2 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 6].field_0 = 0
                    idx = idx + 1
                    continue 
                _9916 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg9
                _9973 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_9916 + 132] = 32
                mem[_9916 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg8):
                    revert with 0, 'Address: call to non-contract'
                _10176 = mem[_9973]
                mem[_9916 + 196 len ceil32(mem[_9973])] = mem[_9973 + 32 len ceil32(mem[_9973])]
                if ceil32(_10176) <= _10176:
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_9916 + 200 len _10176 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_9916 + 196] = arg9
                            mem[_9916 + 228] = block.timestamp
                            mem[_9916 + 260] = arg8
                            mem[_9916 + 292] = 320
                            mem[_9916 + 516] = mem[96]
                            mem[_9916 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9916 + 324] = arg2
                                mem[_9916 + 356] = arg3
                                mem[_9916 + 388] = ceil32(mem[96]) + 352
                                _12247 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + 580
                                while idx < _12247:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 420] = ceil32(mem[96]) + (32 * _12247) + 384
                                _12871 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + (32 * _12247) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + (32 * _12247) + 612
                                while idx < _12871:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 452] = arg11
                                mem[_9916 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + 548 len ceil32(mem[96]) + (32 * _12247) + (32 * _12871) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12247) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9916 + 548] = 0
                                mem[_9916 + 324] = arg2
                                mem[_9916 + 356] = arg3
                                mem[_9916 + 388] = ceil32(mem[96]) + 352
                                _12248 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + 580
                                while idx < _12248:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 420] = ceil32(mem[96]) + (32 * _12248) + 384
                                _12872 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + (32 * _12248) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + (32 * _12248) + 612
                                while idx < _12872:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 452] = arg11
                                mem[_9916 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + 548 len ceil32(mem[96]) + (32 * _12248) + (32 * _12872) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12248) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_9916 + 196] = arg9
                            mem[_9916 + 228] = block.timestamp
                            mem[_9916 + 260] = arg8
                            mem[_9916 + 292] = 320
                            mem[_9916 + 516] = mem[96]
                            mem[_9916 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var132001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9916 + 324] = arg2
                                mem[_9916 + 356] = arg3
                                mem[_9916 + 388] = ceil32(mem[96]) + 352
                                _12249 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + 580
                                while idx < _12249:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 420] = ceil32(mem[96]) + (32 * _12249) + 384
                                _12873 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + (32 * _12249) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + (32 * _12249) + 612
                                while idx < _12873:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 452] = arg11
                                mem[_9916 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + 548 len ceil32(mem[96]) + (32 * _12249) + (32 * _12873) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12249) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9916 + 548] = 0
                                mem[_9916 + 324] = arg2
                                mem[_9916 + 356] = arg3
                                mem[_9916 + 388] = ceil32(mem[96]) + 352
                                _12250 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + 580
                                while idx < _12250:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 420] = ceil32(mem[96]) + (32 * _12250) + 384
                                _12874 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + (32 * _12250) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + (32 * _12250) + 612
                                while idx < _12874:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 452] = arg11
                                mem[_9916 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + 548 len ceil32(mem[96]) + (32 * _12250) + (32 * _12874) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12250) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_9916 + 196] = return_data.size
                        mem[_9916 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_9916 + ceil32(return_data.size) + 197] = arg9
                            mem[_9916 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_9916 + ceil32(return_data.size) + 261] = arg8
                            mem[_9916 + ceil32(return_data.size) + 293] = 320
                            mem[_9916 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9916 + ceil32(return_data.size) + 325] = arg2
                                mem[_9916 + ceil32(return_data.size) + 357] = arg3
                                mem[_9916 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12253 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 581
                                while idx < _12253:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12253) + 384
                                _12875 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12253) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12253) + 613
                                while idx < _12875:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12253) + (32 * _12875) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12253) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9916 + ceil32(return_data.size) + 549] = 0
                                mem[_9916 + ceil32(return_data.size) + 325] = arg2
                                mem[_9916 + ceil32(return_data.size) + 357] = arg3
                                mem[_9916 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12254 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 581
                                while idx < _12254:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12254) + 384
                                _12876 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12254) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12254) + 613
                                while idx < _12876:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12254) + (32 * _12876) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12254) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_9916 + 228] == bool(mem[_9916 + 228])
                            if not mem[_9916 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_9916 + ceil32(return_data.size) + 197] = arg9
                            mem[_9916 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_9916 + ceil32(return_data.size) + 261] = arg8
                            mem[_9916 + ceil32(return_data.size) + 293] = 320
                            mem[_9916 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var132001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9916 + ceil32(return_data.size) + 325] = arg2
                                mem[_9916 + ceil32(return_data.size) + 357] = arg3
                                mem[_9916 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12255 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 581
                                while idx < _12255:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12255) + 384
                                _12877 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12255) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12255) + 613
                                while idx < _12877:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12255) + (32 * _12877) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12255) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9916 + ceil32(return_data.size) + 549] = 0
                                mem[_9916 + ceil32(return_data.size) + 325] = arg2
                                mem[_9916 + ceil32(return_data.size) + 357] = arg3
                                mem[_9916 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12256 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 581
                                while idx < _12256:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12256) + 384
                                _12878 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12256) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12256) + 613
                                while idx < _12878:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12256) + (32 * _12878) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12256) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                else:
                    mem[_10176 + _9916 + 196] = 0
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_9916 + 200 len _10176 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_9916 + 196] = arg9
                            mem[_9916 + 228] = block.timestamp
                            mem[_9916 + 260] = arg8
                            mem[_9916 + 292] = 320
                            mem[_9916 + 516] = mem[96]
                            mem[_9916 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9916 + 324] = arg2
                                mem[_9916 + 356] = arg3
                                mem[_9916 + 388] = ceil32(mem[96]) + 352
                                _12259 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + 580
                                while idx < _12259:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 420] = ceil32(mem[96]) + (32 * _12259) + 384
                                _12879 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + (32 * _12259) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + (32 * _12259) + 612
                                while idx < _12879:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 452] = arg11
                                mem[_9916 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + 548 len ceil32(mem[96]) + (32 * _12259) + (32 * _12879) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12259) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9916 + 548] = 0
                                mem[_9916 + 324] = arg2
                                mem[_9916 + 356] = arg3
                                mem[_9916 + 388] = ceil32(mem[96]) + 352
                                _12260 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + 580
                                while idx < _12260:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 420] = ceil32(mem[96]) + (32 * _12260) + 384
                                _12880 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + (32 * _12260) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + (32 * _12260) + 612
                                while idx < _12880:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 452] = arg11
                                mem[_9916 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + 548 len ceil32(mem[96]) + (32 * _12260) + (32 * _12880) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12260) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_9916 + 196] = arg9
                            mem[_9916 + 228] = block.timestamp
                            mem[_9916 + 260] = arg8
                            mem[_9916 + 292] = 320
                            mem[_9916 + 516] = mem[96]
                            mem[_9916 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var132001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9916 + 324] = arg2
                                mem[_9916 + 356] = arg3
                                mem[_9916 + 388] = ceil32(mem[96]) + 352
                                _12261 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + 580
                                while idx < _12261:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 420] = ceil32(mem[96]) + (32 * _12261) + 384
                                _12881 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + (32 * _12261) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + (32 * _12261) + 612
                                while idx < _12881:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 452] = arg11
                                mem[_9916 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + 548 len ceil32(mem[96]) + (32 * _12261) + (32 * _12881) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12261) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9916 + 548] = 0
                                mem[_9916 + 324] = arg2
                                mem[_9916 + 356] = arg3
                                mem[_9916 + 388] = ceil32(mem[96]) + 352
                                _12262 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + 580
                                while idx < _12262:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 420] = ceil32(mem[96]) + (32 * _12262) + 384
                                _12882 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + (32 * _12262) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + (32 * _12262) + 612
                                while idx < _12882:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + 452] = arg11
                                mem[_9916 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + 548 len ceil32(mem[96]) + (32 * _12262) + (32 * _12882) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12262) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_9916 + 196] = return_data.size
                        mem[_9916 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_9916 + ceil32(return_data.size) + 197] = arg9
                            mem[_9916 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_9916 + ceil32(return_data.size) + 261] = arg8
                            mem[_9916 + ceil32(return_data.size) + 293] = 320
                            mem[_9916 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9916 + ceil32(return_data.size) + 325] = arg2
                                mem[_9916 + ceil32(return_data.size) + 357] = arg3
                                mem[_9916 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12265 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 581
                                while idx < _12265:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12265) + 384
                                _12883 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12265) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12265) + 613
                                while idx < _12883:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12265) + (32 * _12883) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12265) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9916 + ceil32(return_data.size) + 549] = 0
                                mem[_9916 + ceil32(return_data.size) + 325] = arg2
                                mem[_9916 + ceil32(return_data.size) + 357] = arg3
                                mem[_9916 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12266 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 581
                                while idx < _12266:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12266) + 384
                                _12884 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12266) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12266) + 613
                                while idx < _12884:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12266) + (32 * _12884) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12266) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_9916 + 228] == bool(mem[_9916 + 228])
                            if not mem[_9916 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_9916 + ceil32(return_data.size) + 197] = arg9
                            mem[_9916 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_9916 + ceil32(return_data.size) + 261] = arg8
                            mem[_9916 + ceil32(return_data.size) + 293] = 320
                            mem[_9916 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var132001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_9916 + ceil32(return_data.size) + 325] = arg2
                                mem[_9916 + ceil32(return_data.size) + 357] = arg3
                                mem[_9916 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12267 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 581
                                while idx < _12267:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12267) + 384
                                _12885 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12267) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12267) + 613
                                while idx < _12885:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12267) + (32 * _12885) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12267) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _9916 + ceil32(return_data.size) + 549] = 0
                                mem[_9916 + ceil32(return_data.size) + 325] = arg2
                                mem[_9916 + ceil32(return_data.size) + 357] = arg3
                                mem[_9916 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12268 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + 581
                                while idx < _12268:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_9916 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12268) + 384
                                _12886 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12268) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _9916 + ceil32(return_data.size) + (32 * _12268) + 613
                                while idx < _12886:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_9916 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12268) + (32 * _12886) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12268) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
        else:
            s = 0
            idx = ceil32(arg4.length) + 160
            while ceil32(arg4.length) + (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 160 > idx:
                address(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][s + 4].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 31) >> 5
            while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1024 > idx:
                stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            uint8(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_2304) = 0
            _7200 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            idx = 0
            while idx < _7200:
                if idx >= mem[ceil32(arg4.length) + 128]:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(arg4.length) + 172 len 20] != address(stor3.field_0):
                    if idx >= mem[ceil32(arg4.length) + 128]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + ceil32(arg4.length) + 172 len 20])
                    staticcall mem[(32 * idx) + ceil32(arg4.length) + 172 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7230 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_7230] <= 0:
                        revert with 0, 'Not a valid ERC20'
                stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1280++
                mem[0] = sha3(sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2), 1) + 5
                stor[uint255(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1281) + ('array', 5, ('map', ('data', 'msg.sender', 'timestamp', ('type', 32, ('field', 224, ('stor', ('name', 'stor3', 3)))), ('stor', ('name', 'stor2', 2))), ('name', 'stor1', 1)))].field_0 = stor[uint255(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1281) + ('array', 5, ('map', ('data', 'msg.sender', 'timestamp', ('type', 32, ('field', 224, ('stor', ('name', 'stor3', 3)))), ('stor', ('name', 'stor2', 2))), ('name', 'stor1', 1)))].field_0 and !(test266151307() * 256^(16 * bool(stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1280)))
                if idx == -1:
                    revert with 0, 17
                _7200 = mem[ceil32(arg4.length) + 128]
                idx = idx + 1
                continue 
            stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
            mem[0] = sha3(sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2), 1) + 6
            if not mem[ceil32(arg4.length) + (32 * arg5.length) + 160]:
                idx = 0
                while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 + 1 / 2 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 6].field_0 = 0
                    idx = idx + 1
                    continue 
                _8578 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg9
                _8585 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_8578 + 132] = 32
                mem[_8578 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg8):
                    revert with 0, 'Address: call to non-contract'
                _8673 = mem[_8585]
                mem[_8578 + 196 len ceil32(mem[_8585])] = mem[_8585 + 32 len ceil32(mem[_8585])]
                if ceil32(_8673) <= _8673:
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_8578 + 200 len _8673 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_8578 + 196] = arg9
                            mem[_8578 + 228] = block.timestamp
                            mem[_8578 + 260] = arg8
                            mem[_8578 + 292] = 320
                            mem[_8578 + 516] = mem[96]
                            mem[_8578 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8578 + 324] = arg2
                                mem[_8578 + 356] = arg3
                                mem[_8578 + 388] = ceil32(mem[96]) + 352
                                _11227 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + 580
                                while idx < _11227:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 420] = ceil32(mem[96]) + (32 * _11227) + 384
                                _12183 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + (32 * _11227) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + (32 * _11227) + 612
                                while idx < _12183:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 452] = arg11
                                mem[_8578 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + 548 len ceil32(mem[96]) + (32 * _11227) + (32 * _12183) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11227) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8578 + 548] = 0
                                mem[_8578 + 324] = arg2
                                mem[_8578 + 356] = arg3
                                mem[_8578 + 388] = ceil32(mem[96]) + 352
                                _11228 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + 580
                                while idx < _11228:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 420] = ceil32(mem[96]) + (32 * _11228) + 384
                                _12184 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + (32 * _11228) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + (32 * _11228) + 612
                                while idx < _12184:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 452] = arg11
                                mem[_8578 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + 548 len ceil32(mem[96]) + (32 * _11228) + (32 * _12184) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11228) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_8578 + 196] = arg9
                            mem[_8578 + 228] = block.timestamp
                            mem[_8578 + 260] = arg8
                            mem[_8578 + 292] = 320
                            mem[_8578 + 516] = mem[96]
                            mem[_8578 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var130001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8578 + 324] = arg2
                                mem[_8578 + 356] = arg3
                                mem[_8578 + 388] = ceil32(mem[96]) + 352
                                _11229 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + 580
                                while idx < _11229:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 420] = ceil32(mem[96]) + (32 * _11229) + 384
                                _12185 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + (32 * _11229) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + (32 * _11229) + 612
                                while idx < _12185:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 452] = arg11
                                mem[_8578 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + 548 len ceil32(mem[96]) + (32 * _11229) + (32 * _12185) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11229) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8578 + 548] = 0
                                mem[_8578 + 324] = arg2
                                mem[_8578 + 356] = arg3
                                mem[_8578 + 388] = ceil32(mem[96]) + 352
                                _11230 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + 580
                                while idx < _11230:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 420] = ceil32(mem[96]) + (32 * _11230) + 384
                                _12186 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + (32 * _11230) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + (32 * _11230) + 612
                                while idx < _12186:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 452] = arg11
                                mem[_8578 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + 548 len ceil32(mem[96]) + (32 * _11230) + (32 * _12186) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11230) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_8578 + 196] = return_data.size
                        mem[_8578 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_8578 + ceil32(return_data.size) + 197] = arg9
                            mem[_8578 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_8578 + ceil32(return_data.size) + 261] = arg8
                            mem[_8578 + ceil32(return_data.size) + 293] = 320
                            mem[_8578 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8578 + ceil32(return_data.size) + 325] = arg2
                                mem[_8578 + ceil32(return_data.size) + 357] = arg3
                                mem[_8578 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11233 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 581
                                while idx < _11233:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11233) + 384
                                _12187 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11233) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11233) + 613
                                while idx < _12187:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11233) + (32 * _12187) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11233) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8578 + ceil32(return_data.size) + 549] = 0
                                mem[_8578 + ceil32(return_data.size) + 325] = arg2
                                mem[_8578 + ceil32(return_data.size) + 357] = arg3
                                mem[_8578 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11234 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 581
                                while idx < _11234:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11234) + 384
                                _12188 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11234) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11234) + 613
                                while idx < _12188:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11234) + (32 * _12188) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11234) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_8578 + 228] == bool(mem[_8578 + 228])
                            if not mem[_8578 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_8578 + ceil32(return_data.size) + 197] = arg9
                            mem[_8578 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_8578 + ceil32(return_data.size) + 261] = arg8
                            mem[_8578 + ceil32(return_data.size) + 293] = 320
                            mem[_8578 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var130001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8578 + ceil32(return_data.size) + 325] = arg2
                                mem[_8578 + ceil32(return_data.size) + 357] = arg3
                                mem[_8578 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11235 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 581
                                while idx < _11235:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11235) + 384
                                _12189 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11235) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11235) + 613
                                while idx < _12189:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11235) + (32 * _12189) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11235) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8578 + ceil32(return_data.size) + 549] = 0
                                mem[_8578 + ceil32(return_data.size) + 325] = arg2
                                mem[_8578 + ceil32(return_data.size) + 357] = arg3
                                mem[_8578 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11236 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 581
                                while idx < _11236:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11236) + 384
                                _12190 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11236) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11236) + 613
                                while idx < _12190:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11236) + (32 * _12190) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11236) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                else:
                    mem[_8673 + _8578 + 196] = 0
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_8578 + 200 len _8673 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_8578 + 196] = arg9
                            mem[_8578 + 228] = block.timestamp
                            mem[_8578 + 260] = arg8
                            mem[_8578 + 292] = 320
                            mem[_8578 + 516] = mem[96]
                            mem[_8578 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8578 + 324] = arg2
                                mem[_8578 + 356] = arg3
                                mem[_8578 + 388] = ceil32(mem[96]) + 352
                                _11239 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + 580
                                while idx < _11239:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 420] = ceil32(mem[96]) + (32 * _11239) + 384
                                _12191 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + (32 * _11239) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + (32 * _11239) + 612
                                while idx < _12191:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 452] = arg11
                                mem[_8578 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + 548 len ceil32(mem[96]) + (32 * _11239) + (32 * _12191) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11239) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8578 + 548] = 0
                                mem[_8578 + 324] = arg2
                                mem[_8578 + 356] = arg3
                                mem[_8578 + 388] = ceil32(mem[96]) + 352
                                _11240 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + 580
                                while idx < _11240:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 420] = ceil32(mem[96]) + (32 * _11240) + 384
                                _12192 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + (32 * _11240) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + (32 * _11240) + 612
                                while idx < _12192:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 452] = arg11
                                mem[_8578 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + 548 len ceil32(mem[96]) + (32 * _11240) + (32 * _12192) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11240) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_8578 + 196] = arg9
                            mem[_8578 + 228] = block.timestamp
                            mem[_8578 + 260] = arg8
                            mem[_8578 + 292] = 320
                            mem[_8578 + 516] = mem[96]
                            mem[_8578 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var130001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8578 + 324] = arg2
                                mem[_8578 + 356] = arg3
                                mem[_8578 + 388] = ceil32(mem[96]) + 352
                                _11241 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + 580
                                while idx < _11241:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 420] = ceil32(mem[96]) + (32 * _11241) + 384
                                _12193 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + (32 * _11241) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + (32 * _11241) + 612
                                while idx < _12193:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 452] = arg11
                                mem[_8578 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + 548 len ceil32(mem[96]) + (32 * _11241) + (32 * _12193) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11241) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8578 + 548] = 0
                                mem[_8578 + 324] = arg2
                                mem[_8578 + 356] = arg3
                                mem[_8578 + 388] = ceil32(mem[96]) + 352
                                _11242 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + 580
                                while idx < _11242:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 420] = ceil32(mem[96]) + (32 * _11242) + 384
                                _12194 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + (32 * _11242) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + (32 * _11242) + 612
                                while idx < _12194:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + 452] = arg11
                                mem[_8578 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + 548 len ceil32(mem[96]) + (32 * _11242) + (32 * _12194) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11242) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_8578 + 196] = return_data.size
                        mem[_8578 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_8578 + ceil32(return_data.size) + 197] = arg9
                            mem[_8578 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_8578 + ceil32(return_data.size) + 261] = arg8
                            mem[_8578 + ceil32(return_data.size) + 293] = 320
                            mem[_8578 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8578 + ceil32(return_data.size) + 325] = arg2
                                mem[_8578 + ceil32(return_data.size) + 357] = arg3
                                mem[_8578 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11245 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 581
                                while idx < _11245:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11245) + 384
                                _12195 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11245) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11245) + 613
                                while idx < _12195:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11245) + (32 * _12195) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11245) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8578 + ceil32(return_data.size) + 549] = 0
                                mem[_8578 + ceil32(return_data.size) + 325] = arg2
                                mem[_8578 + ceil32(return_data.size) + 357] = arg3
                                mem[_8578 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11246 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 581
                                while idx < _11246:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11246) + 384
                                _12196 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11246) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11246) + 613
                                while idx < _12196:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11246) + (32 * _12196) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11246) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_8578 + 228] == bool(mem[_8578 + 228])
                            if not mem[_8578 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_8578 + ceil32(return_data.size) + 197] = arg9
                            mem[_8578 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_8578 + ceil32(return_data.size) + 261] = arg8
                            mem[_8578 + ceil32(return_data.size) + 293] = 320
                            mem[_8578 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var130001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_8578 + ceil32(return_data.size) + 325] = arg2
                                mem[_8578 + ceil32(return_data.size) + 357] = arg3
                                mem[_8578 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11247 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 581
                                while idx < _11247:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11247) + 384
                                _12197 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11247) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11247) + 613
                                while idx < _12197:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11247) + (32 * _12197) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11247) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _8578 + ceil32(return_data.size) + 549] = 0
                                mem[_8578 + ceil32(return_data.size) + 325] = arg2
                                mem[_8578 + ceil32(return_data.size) + 357] = arg3
                                mem[_8578 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _11248 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + 581
                                while idx < _11248:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8578 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _11248) + 384
                                _12198 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11248) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _8578 + ceil32(return_data.size) + (32 * _11248) + 613
                                while idx < _12198:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_8578 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _11248) + (32 * _12198) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _11248) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
            else:
                s = 0
                idx = ceil32(arg4.length) + (32 * arg5.length) + 192
                while ceil32(arg4.length) + (32 * arg5.length) + (32 * mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) + 192 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][6].field_0 = mem[idx + 16 len 16] * 256^s or !(test266151307() * 256^s) and stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][6].field_0
                    s = s + (16 * -s + 31 / 32) + (-1 * s * s + 31 / 32) + 16
                    idx = idx + 32
                    continue 
                idx = floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1
                s = sha3(sha3(sha3(address(msg.sender), block.timestamp, uint32(stor3.field_224), stor2), 1) + 6)
                while idx:
                    stor[s] = !(test266151307() * 256^idx) and stor[s]
                    idx = idx + (16 * -idx + 31 / 32) + (-1 * idx * idx + 31 / 32) + 16
                    s = (idx + 31 / 32) + s
                    continue 
                idx = (floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + Mask(248, 4, None + -(floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + 17) + 31 / 32 * Mask(252, 0, None + -(floor32(mem[ceil32(arg4.length) + (32 * arg5.length) + 160]) >> 1) + 17) >> 4
                while stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2].field_1536 + 1 / 2 > idx:
                    stor1[msg.sender][block.timestamp][uint32(stor3.field_224)][stor2][idx + 6].field_0 = 0
                    idx = idx + 1
                    continue 
                _11164 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg9
                _11251 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_11164 + 132] = 32
                mem[_11164 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg8):
                    revert with 0, 'Address: call to non-contract'
                _11480 = mem[_11251]
                mem[_11164 + 196 len ceil32(mem[_11251])] = mem[_11251 + 32 len ceil32(mem[_11251])]
                if ceil32(_11480) <= _11480:
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_11164 + 200 len _11480 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_11164 + 196] = arg9
                            mem[_11164 + 228] = block.timestamp
                            mem[_11164 + 260] = arg8
                            mem[_11164 + 292] = 320
                            mem[_11164 + 516] = mem[96]
                            mem[_11164 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11164 + 324] = arg2
                                mem[_11164 + 356] = arg3
                                mem[_11164 + 388] = ceil32(mem[96]) + 352
                                _12961 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + 580
                                while idx < _12961:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 420] = ceil32(mem[96]) + (32 * _12961) + 384
                                _13255 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + (32 * _12961) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + (32 * _12961) + 612
                                while idx < _13255:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 452] = arg11
                                mem[_11164 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + 548 len ceil32(mem[96]) + (32 * _12961) + (32 * _13255) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12961) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11164 + 548] = 0
                                mem[_11164 + 324] = arg2
                                mem[_11164 + 356] = arg3
                                mem[_11164 + 388] = ceil32(mem[96]) + 352
                                _12962 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + 580
                                while idx < _12962:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 420] = ceil32(mem[96]) + (32 * _12962) + 384
                                _13256 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + (32 * _12962) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + (32 * _12962) + 612
                                while idx < _13256:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 452] = arg11
                                mem[_11164 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + 548 len ceil32(mem[96]) + (32 * _12962) + (32 * _13256) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12962) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_11164 + 196] = arg9
                            mem[_11164 + 228] = block.timestamp
                            mem[_11164 + 260] = arg8
                            mem[_11164 + 292] = 320
                            mem[_11164 + 516] = mem[96]
                            mem[_11164 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var135001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11164 + 324] = arg2
                                mem[_11164 + 356] = arg3
                                mem[_11164 + 388] = ceil32(mem[96]) + 352
                                _12963 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + 580
                                while idx < _12963:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 420] = ceil32(mem[96]) + (32 * _12963) + 384
                                _13257 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + (32 * _12963) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + (32 * _12963) + 612
                                while idx < _13257:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 452] = arg11
                                mem[_11164 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + 548 len ceil32(mem[96]) + (32 * _12963) + (32 * _13257) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12963) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11164 + 548] = 0
                                mem[_11164 + 324] = arg2
                                mem[_11164 + 356] = arg3
                                mem[_11164 + 388] = ceil32(mem[96]) + 352
                                _12964 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + 580
                                while idx < _12964:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 420] = ceil32(mem[96]) + (32 * _12964) + 384
                                _13258 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + (32 * _12964) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + (32 * _12964) + 612
                                while idx < _13258:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 452] = arg11
                                mem[_11164 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + 548 len ceil32(mem[96]) + (32 * _12964) + (32 * _13258) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12964) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_11164 + 196] = return_data.size
                        mem[_11164 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_11164 + ceil32(return_data.size) + 197] = arg9
                            mem[_11164 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_11164 + ceil32(return_data.size) + 261] = arg8
                            mem[_11164 + ceil32(return_data.size) + 293] = 320
                            mem[_11164 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11164 + ceil32(return_data.size) + 325] = arg2
                                mem[_11164 + ceil32(return_data.size) + 357] = arg3
                                mem[_11164 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12967 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 581
                                while idx < _12967:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12967) + 384
                                _13259 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12967) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12967) + 613
                                while idx < _13259:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12967) + (32 * _13259) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12967) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11164 + ceil32(return_data.size) + 549] = 0
                                mem[_11164 + ceil32(return_data.size) + 325] = arg2
                                mem[_11164 + ceil32(return_data.size) + 357] = arg3
                                mem[_11164 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12968 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 581
                                while idx < _12968:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12968) + 384
                                _13260 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12968) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12968) + 613
                                while idx < _13260:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12968) + (32 * _13260) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12968) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_11164 + 228] == bool(mem[_11164 + 228])
                            if not mem[_11164 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_11164 + ceil32(return_data.size) + 197] = arg9
                            mem[_11164 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_11164 + ceil32(return_data.size) + 261] = arg8
                            mem[_11164 + ceil32(return_data.size) + 293] = 320
                            mem[_11164 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var135001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11164 + ceil32(return_data.size) + 325] = arg2
                                mem[_11164 + ceil32(return_data.size) + 357] = arg3
                                mem[_11164 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12969 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 581
                                while idx < _12969:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12969) + 384
                                _13261 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12969) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12969) + 613
                                while idx < _13261:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12969) + (32 * _13261) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12969) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11164 + ceil32(return_data.size) + 549] = 0
                                mem[_11164 + ceil32(return_data.size) + 325] = arg2
                                mem[_11164 + ceil32(return_data.size) + 357] = arg3
                                mem[_11164 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12970 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 581
                                while idx < _12970:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12970) + 384
                                _13262 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12970) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12970) + 613
                                while idx < _13262:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12970) + (32 * _13262) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12970) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                else:
                    mem[_11480 + _11164 + 196] = 0
                    call arg8 with:
                         gas gas_remaining wei
                        args mem[_11164 + 200 len _11480 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[_11164 + 196] = arg9
                            mem[_11164 + 228] = block.timestamp
                            mem[_11164 + 260] = arg8
                            mem[_11164 + 292] = 320
                            mem[_11164 + 516] = mem[96]
                            mem[_11164 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11164 + 324] = arg2
                                mem[_11164 + 356] = arg3
                                mem[_11164 + 388] = ceil32(mem[96]) + 352
                                _12973 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + 580
                                while idx < _12973:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 420] = ceil32(mem[96]) + (32 * _12973) + 384
                                _13263 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + (32 * _12973) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + (32 * _12973) + 612
                                while idx < _13263:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 452] = arg11
                                mem[_11164 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + 548 len ceil32(mem[96]) + (32 * _12973) + (32 * _13263) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12973) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11164 + 548] = 0
                                mem[_11164 + 324] = arg2
                                mem[_11164 + 356] = arg3
                                mem[_11164 + 388] = ceil32(mem[96]) + 352
                                _12974 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + 580
                                while idx < _12974:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 420] = ceil32(mem[96]) + (32 * _12974) + 384
                                _13264 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + (32 * _12974) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + (32 * _12974) + 612
                                while idx < _13264:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 452] = arg11
                                mem[_11164 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + 548 len ceil32(mem[96]) + (32 * _12974) + (32 * _13264) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12974) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_11164 + 196] = arg9
                            mem[_11164 + 228] = block.timestamp
                            mem[_11164 + 260] = arg8
                            mem[_11164 + 292] = 320
                            mem[_11164 + 516] = mem[96]
                            mem[_11164 + 548 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var135001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11164 + 324] = arg2
                                mem[_11164 + 356] = arg3
                                mem[_11164 + 388] = ceil32(mem[96]) + 352
                                _12975 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + 580
                                while idx < _12975:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 420] = ceil32(mem[96]) + (32 * _12975) + 384
                                _13265 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + (32 * _12975) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + (32 * _12975) + 612
                                while idx < _13265:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 452] = arg11
                                mem[_11164 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + 548 len ceil32(mem[96]) + (32 * _12975) + (32 * _13265) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12975) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11164 + 548] = 0
                                mem[_11164 + 324] = arg2
                                mem[_11164 + 356] = arg3
                                mem[_11164 + 388] = ceil32(mem[96]) + 352
                                _12976 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + 548] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + 580
                                while idx < _12976:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 420] = ceil32(mem[96]) + (32 * _12976) + 384
                                _13266 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + (32 * _12976) + 580] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + (32 * _12976) + 612
                                while idx < _13266:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + 452] = arg11
                                mem[_11164 + 484] = arg10
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + 548 len ceil32(mem[96]) + (32 * _12976) + (32 * _13266) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12976) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                    else:
                        mem[_11164 + 196] = return_data.size
                        mem[_11164 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[_11164 + ceil32(return_data.size) + 197] = arg9
                            mem[_11164 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_11164 + ceil32(return_data.size) + 261] = arg8
                            mem[_11164 + ceil32(return_data.size) + 293] = 320
                            mem[_11164 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11164 + ceil32(return_data.size) + 325] = arg2
                                mem[_11164 + ceil32(return_data.size) + 357] = arg3
                                mem[_11164 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12979 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 581
                                while idx < _12979:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12979) + 384
                                _13267 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12979) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12979) + 613
                                while idx < _13267:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12979) + (32 * _13267) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12979) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11164 + ceil32(return_data.size) + 549] = 0
                                mem[_11164 + ceil32(return_data.size) + 325] = arg2
                                mem[_11164 + ceil32(return_data.size) + 357] = arg3
                                mem[_11164 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12980 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 581
                                while idx < _12980:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12980) + 384
                                _13268 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12980) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12980) + 613
                                while idx < _13268:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12980) + (32 * _13268) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12980) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                        else:
                            require return_data.size >= 32
                            require mem[_11164 + 228] == bool(mem[_11164 + 228])
                            if not mem[_11164 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_11164 + ceil32(return_data.size) + 197] = arg9
                            mem[_11164 + ceil32(return_data.size) + 229] = block.timestamp
                            mem[_11164 + ceil32(return_data.size) + 261] = arg8
                            mem[_11164 + ceil32(return_data.size) + 293] = 320
                            mem[_11164 + ceil32(return_data.size) + 517] = mem[96]
                            mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            var135001 = ceil32(mem[96])
                            if ceil32(mem[96]) <= mem[96]:
                                mem[_11164 + ceil32(return_data.size) + 325] = arg2
                                mem[_11164 + ceil32(return_data.size) + 357] = arg3
                                mem[_11164 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12981 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 581
                                while idx < _12981:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12981) + 384
                                _13269 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12981) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12981) + 613
                                while idx < _13269:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12981) + (32 * _13269) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12981) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
                            else:
                                mem[mem[96] + _11164 + ceil32(return_data.size) + 549] = 0
                                mem[_11164 + ceil32(return_data.size) + 325] = arg2
                                mem[_11164 + ceil32(return_data.size) + 357] = arg3
                                mem[_11164 + ceil32(return_data.size) + 389] = ceil32(mem[96]) + 352
                                _12982 = mem[ceil32(arg4.length) + 128]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 549] = mem[ceil32(arg4.length) + 128]
                                idx = 0
                                s = ceil32(arg4.length) + 160
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + 581
                                while idx < _12982:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11164 + ceil32(return_data.size) + 421] = ceil32(mem[96]) + (32 * _12982) + 384
                                _13270 = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                mem[ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12982) + 581] = mem[ceil32(arg4.length) + (32 * arg5.length) + 160]
                                idx = 0
                                s = ceil32(arg4.length) + (32 * arg5.length) + 192
                                t = ceil32(mem[96]) + _11164 + ceil32(return_data.size) + (32 * _12982) + 613
                                while idx < _13270:
                                    mem[t] = mem[s + 16 len 16]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit FillSuccess(arg9, block.timestamp, address(arg8), Array(len=mem[96], data=mem[_11164 + ceil32(return_data.size) + 549 len ceil32(mem[96]) + (32 * _12982) + (32 * _13270) + 64]), arg2, arg3, ceil32(mem[96]) + 352, ceil32(mem[96]) + (32 * _12982) + 384, address(arg11), arg10, msg.sender, sha3(msg.sender, block.timestamp, uint32(stor3.field_224), stor2));
}



}
