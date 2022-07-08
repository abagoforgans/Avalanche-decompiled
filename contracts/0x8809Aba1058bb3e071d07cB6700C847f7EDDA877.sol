contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 paused;
address owner;
address sub_4d1c3621Address;
address sub_2cfbfde4Address;
uint256 sub_1d66216d;
mapping of struct stor302;
address randomGeneratorAddress;

function sub_1d66216d(?) payable {
    return sub_1d66216d
}

function sub_2cfbfde4(?) payable {
    return sub_2cfbfde4Address
}

function sub_4d1c3621(?) payable {
    return sub_4d1c3621Address
}

function paused() payable {
    return bool(paused)
}

function owner() payable {
    return owner
}

function randomGenerator() payable {
    return randomGeneratorAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function recoverLostAVAX() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function pause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
    else:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
}

function recoverLostTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9ebf906a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(address(arg1)):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Army: You can only set 0x0 or a contract address as a new implementation'
    sub_4d1c3621Address = address(arg1)
    emit 0xa3e8afe8: sub_4d1c3621Address, address(arg1)
}

function sub_abb47cf0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(address(arg1)):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TroopsManager: You can only set 0x0 or a contract address as a new implementation'
    sub_2cfbfde4Address = address(arg1)
    emit 0x2997fe9e: sub_2cfbfde4Address, address(arg1)
}

function setRandomGenerator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Random Generator should not be null'
    randomGeneratorAddress = arg1
    call arg1.0xbf7199 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    paused = 0
    sub_1d66216d = 100
}

function sub_12194e92(?) payable {
    require calldata.size - 4 >= 64
    if not sub_2cfbfde4Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fighting: TroopsManager is not set'
    if arg1 >= sub_1d66216d:
        revert with 0, 'invalid room number'
    staticcall sub_2cfbfde4Address.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not owner of the troop'
    if not stor302[arg1].field_512:
        stor302[arg1].field_0 = arg2
        stor302[arg1].field_512 = 1
    else:
        if 3 == stor302[arg1].field_512:
            stor302[arg1].field_0 = arg2
            stor302[arg1].field_512 = 1
        else:
            if 4 == stor302[arg1].field_512:
                stor302[arg1].field_0 = arg2
                stor302[arg1].field_512 = 1
            else:
                if stor302[arg1].field_512 != 1:
                    revert with 0, 'The room is already full'
                stor302[arg1].field_256 = arg2
                stor302[arg1].field_512 = 2
}

function sub_20c805ef(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 302
            _105 = sha3(mem[(32 * idx) + 128], 302)
            _106 = mem[64]
            mem[64] = mem[64] + 128
            mem[_106] = stor302[mem[(32 * idx) + 128]].field_0
            mem[_106 + 32] = stor1[_105]
            mem[_106 + 64] = stor2[_105]
            mem[_106 + 96] = stor3[_105]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] = _106
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _98 = mem[64]
        mem[mem[64]] = 32
        _101 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _101:
            _140 = mem[s]
            mem[t] = mem[mem[s]]
            _142 = mem[_140 + 32]
            mem[t + 32] = mem[mem[_140 + 32]]
            mem[t + 64] = mem[_142 + 32]
            mem[t + 96] = mem[_142 + 64]
            mem[t + 128] = mem[_142 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _98 + (160 * _101) + -mem[64] + 64
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
    mem[var28002] = var28001
    mem[var30002] = var30001
    if not var30003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 302
            _249 = sha3(mem[(32 * idx) + 128], 302)
            _250 = mem[64]
            mem[64] = mem[64] + 128
            mem[_250] = stor302[mem[(32 * idx) + 128]].field_0
            mem[_250 + 32] = stor1[_249]
            mem[_250 + 64] = stor2[_249]
            mem[_250 + 96] = stor3[_249]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] = _250
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _242 = mem[64]
        mem[mem[64]] = 32
        _245 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _245:
            _284 = mem[s]
            mem[t] = mem[mem[s]]
            _286 = mem[_284 + 32]
            mem[t + 32] = mem[mem[_284 + 32]]
            mem[t + 64] = mem[_286 + 32]
            mem[t + 96] = mem[_286 + 64]
            mem[t + 128] = mem[_286 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _242 + (160 * _245) + -mem[64] + 64
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
    mem[var36002] = var36001
    mem[var38002] = var38001
    if not var38003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 302
            _393 = sha3(mem[(32 * idx) + 128], 302)
            _394 = mem[64]
            mem[64] = mem[64] + 128
            mem[_394] = stor302[mem[(32 * idx) + 128]].field_0
            mem[_394 + 32] = stor1[_393]
            mem[_394 + 64] = stor2[_393]
            mem[_394 + 96] = stor3[_393]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] = _394
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _386 = mem[64]
        mem[mem[64]] = 32
        _389 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _389:
            _428 = mem[s]
            mem[t] = mem[mem[s]]
            _430 = mem[_428 + 32]
            mem[t + 32] = mem[mem[_428 + 32]]
            mem[t + 64] = mem[_430 + 32]
            mem[t + 96] = mem[_430 + 64]
            mem[t + 128] = mem[_430 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _386 + (160 * _389) + -mem[64] + 64
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
    mem[var44002] = var44001
    mem[var46002] = var46001
    if not var46003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 302
            _537 = sha3(mem[(32 * idx) + 128], 302)
            _538 = mem[64]
            mem[64] = mem[64] + 128
            mem[_538] = stor302[mem[(32 * idx) + 128]].field_0
            mem[_538 + 32] = stor1[_537]
            mem[_538 + 64] = stor2[_537]
            mem[_538 + 96] = stor3[_537]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] = _538
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _530 = mem[64]
        mem[mem[64]] = 32
        _533 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _533:
            _572 = mem[s]
            mem[t] = mem[mem[s]]
            _574 = mem[_572 + 32]
            mem[t + 32] = mem[mem[_572 + 32]]
            mem[t + 64] = mem[_574 + 32]
            mem[t + 96] = mem[_574 + 64]
            mem[t + 128] = mem[_574 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _530 + (160 * _533) + -mem[64] + 64
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 897
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
    mem[var52002] = var52001
    mem[var54002] = var54001
    if var54003 - 1:
        # nil
    else:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 302
            _681 = sha3(mem[(32 * idx) + 128], 302)
            _682 = mem[64]
            mem[64] = mem[64] + 128
            mem[_682] = stor302[mem[(32 * idx) + 128]].field_0
            mem[_682 + 32] = stor1[_681]
            mem[_682 + 64] = stor2[_681]
            mem[_682 + 96] = stor3[_681]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32] = _682
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _674 = mem[64]
        mem[mem[64]] = 32
        _677 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _677:
            _716 = mem[s]
            mem[t] = mem[mem[s]]
            _718 = mem[_716 + 32]
            mem[t + 32] = mem[mem[_716 + 32]]
            mem[t + 64] = mem[_718 + 32]
            mem[t + 96] = mem[_718 + 64]
            mem[t + 128] = mem[_718 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _674 + (160 * _677) + -mem[64] + 64
}

function fight(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_2cfbfde4Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fighting: TroopsManager is not set'
    if not randomGeneratorAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fighting: Random number generator is not set'
    mem[0] = arg1
    mem[32] = 302
    if stor302[arg1].field_512 != 2:
        revert with 0, 'The room is not ready to fight'
    mem[100] = stor302[arg1].field_0
    staticcall sub_2cfbfde4Address.0x6352211e with:
            gas gas_remaining wei
           args stor302[arg1].field_0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        mem[ceil32(return_data.size) + 96] = 1
        mem[ceil32(return_data.size) + 128] = stor302[arg1].field_0
        mem[ceil32(return_data.size) + 160] = 0x7197fc9e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 164] = 32
        mem[ceil32(return_data.size) + 196] = 1
        mem[ceil32(return_data.size) + 228] = stor302[arg1].field_0
        staticcall sub_2cfbfde4Address.0x7197fc9e with:
                gas gas_remaining wei
               args Array(len=1, data=stor302[arg1].field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _228 = mem[ceil32(return_data.size) + 160 len 4], 0
        require mem[ceil32(return_data.size) + 160 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 191 < ceil32(return_data.size) + return_data.size + 160
        _230 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]) + 161 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]) + 161
        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]
        require _228 + (32 * _230) + 32 <= return_data.size
        idx = ceil32(return_data.size) + _228 + 192
        s = (2 * ceil32(return_data.size)) + 192
        while idx < ceil32(return_data.size) + _228 + (32 * _230) + 192:
            _418 = mem[idx]
            require mem[idx] <= test266151307()
            require return_data.size + -_228 + -mem[idx] - 32 >= 192
            _427 = mem[64]
            if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 192
            _431 = mem[ceil32(return_data.size) + _228 + _418 + 192]
            require mem[ceil32(return_data.size) + _228 + _418 + 192] <= test266151307()
            require return_data.size + -_228 + -_418 + -mem[ceil32(return_data.size) + _228 + _418 + 192] - 32 >= 256
            _438 = mem[64]
            if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 256
            mem[_438] = mem[ceil32(return_data.size) + _228 + _418 + mem[ceil32(return_data.size) + _228 + _418 + 192] + 192]
            _443 = mem[ceil32(return_data.size) + _228 + _418 + _431 + 224]
            require mem[ceil32(return_data.size) + _228 + _418 + _431 + 224] <= test266151307()
            require ceil32(return_data.size) + _228 + _418 + _431 + mem[ceil32(return_data.size) + _228 + _418 + _431 + 224] + 223 < ceil32(return_data.size) + return_data.size + 160
            _448 = mem[ceil32(return_data.size) + _228 + _418 + _431 + mem[ceil32(return_data.size) + _228 + _418 + _431 + 224] + 192]
            if mem[ceil32(return_data.size) + _228 + _418 + _431 + mem[ceil32(return_data.size) + _228 + _418 + _431 + 224] + 192] > test266151307():
                revert with 0, 65
            _451 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _228 + _418 + _431 + mem[ceil32(return_data.size) + _228 + _418 + _431 + 224] + 192])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _228 + _418 + _431 + mem[ceil32(return_data.size) + _228 + _418 + _431 + 224] + 192])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _228 + _418 + _431 + mem[ceil32(return_data.size) + _228 + _418 + _431 + 224] + 192])) + 1
            mem[_451] = mem[ceil32(return_data.size) + _228 + _418 + _431 + mem[ceil32(return_data.size) + _228 + _418 + _431 + 224] + 192]
            require _228 + _418 + _431 + _443 + _448 + 64 <= return_data.size
            t = 0
            while t < _448:
                mem[t + _451 + 32] = mem[t + ceil32(return_data.size) + _228 + _418 + _431 + _443 + 224]
                t = t + 32
                continue 
            if ceil32(_448) > _448:
                mem[_451 + _448 + 32] = 0
            mem[_438 + 32] = _451
            mem[_438 + 64] = mem[ceil32(return_data.size) + _228 + _418 + _431 + 256]
            mem[_438 + 96] = mem[ceil32(return_data.size) + _228 + _418 + _431 + 288]
            mem[_438 + 128] = mem[ceil32(return_data.size) + _228 + _418 + _431 + 320]
            mem[_438 + 160] = mem[ceil32(return_data.size) + _228 + _418 + _431 + 352]
            require mem[ceil32(return_data.size) + _228 + _418 + _431 + 384] == bool(mem[ceil32(return_data.size) + _228 + _418 + _431 + 384])
            mem[_438 + 192] = mem[ceil32(return_data.size) + _228 + _418 + _431 + 384]
            require mem[ceil32(return_data.size) + _228 + _418 + _431 + 416] == bool(mem[ceil32(return_data.size) + _228 + _418 + _431 + 416])
            mem[_438 + 224] = mem[ceil32(return_data.size) + _228 + _418 + _431 + 416]
            mem[_427] = _438
            mem[_427 + 32] = mem[ceil32(return_data.size) + _228 + _418 + 224]
            mem[_427 + 64] = mem[ceil32(return_data.size) + _228 + _418 + 256]
            mem[_427 + 96] = mem[ceil32(return_data.size) + _228 + _418 + 288]
            mem[_427 + 128] = mem[ceil32(return_data.size) + _228 + _418 + 320]
            mem[_427 + 160] = mem[ceil32(return_data.size) + _228 + _418 + 352]
            mem[s] = _427
            idx = idx + 32
            s = s + 32
            continue 
        _420 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_420]:
            revert with 0, 50
        mem[_420 + 32] = stor302[arg1].field_256
        mem[_420 + 64] = 0x7197fc9e00000000000000000000000000000000000000000000000000000000
        mem[_420 + 68] = 32
        mem[_420 + 100] = mem[_420]
        mem[_420 + 132 len 32 * mem[_420]] = mem[_420 + 32 len 32 * mem[_420]]
        staticcall sub_2cfbfde4Address with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _420 + (32 * mem[_420]) + -mem[64] + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _608 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _628 = mem[_608]
        require mem[_608] <= test266151307()
        require _608 + mem[_608] + 31 < _608 + return_data.size
        _632 = mem[_608 + mem[_608]]
        if mem[_608 + mem[_608]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_608 + mem[_608]]) + 1 < 0 or _608 + ceil32(return_data.size) + ceil32(32 * mem[_608 + mem[_608]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _608 + ceil32(return_data.size) + ceil32(32 * mem[_608 + mem[_608]]) + 1
        mem[_608 + ceil32(return_data.size)] = _632
        require _628 + (32 * _632) + 32 <= return_data.size
        idx = _608 + _628 + 32
        s = _608 + ceil32(return_data.size) + 32
        while idx < _608 + _628 + (32 * _632) + 32:
            _762 = mem[idx]
            require mem[idx] <= test266151307()
            require return_data.size + -_628 + -mem[idx] - 32 >= 192
            _770 = mem[64]
            if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 192
            _773 = mem[_608 + _628 + _762 + 32]
            require mem[_608 + _628 + _762 + 32] <= test266151307()
            require return_data.size + -_628 + -_762 + -mem[_608 + _628 + _762 + 32] - 32 >= 256
            _780 = mem[64]
            if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 256
            mem[_780] = mem[_608 + _628 + _762 + _773 + 32]
            _783 = mem[_608 + _628 + _762 + _773 + 64]
            require mem[_608 + _628 + _762 + _773 + 64] <= test266151307()
            require _608 + _628 + _762 + _773 + mem[_608 + _628 + _762 + _773 + 64] + 63 < _608 + return_data.size
            _789 = mem[_608 + _628 + _762 + _773 + mem[_608 + _628 + _762 + _773 + 64] + 32]
            if mem[_608 + _628 + _762 + _773 + mem[_608 + _628 + _762 + _773 + 64] + 32] > test266151307():
                revert with 0, 65
            _798 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_608 + _628 + _762 + _773 + mem[_608 + _628 + _762 + _773 + 64] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_608 + _628 + _762 + _773 + mem[_608 + _628 + _762 + _773 + 64] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_608 + _628 + _762 + _773 + mem[_608 + _628 + _762 + _773 + 64] + 32])) + 1
            mem[_798] = _789
            require _628 + _762 + _773 + _783 + _789 + 64 <= return_data.size
            t = 0
            while t < _789:
                mem[t + _798 + 32] = mem[t + _608 + _628 + _762 + _773 + _783 + 64]
                t = t + 32
                continue 
            if ceil32(_789) > _789:
                mem[_798 + _789 + 32] = 0
            mem[_780 + 32] = _798
            mem[_780 + 64] = mem[_608 + _628 + _762 + _773 + 96]
            mem[_780 + 96] = mem[_608 + _628 + _762 + _773 + 128]
            mem[_780 + 128] = mem[_608 + _628 + _762 + _773 + 160]
            mem[_780 + 160] = mem[_608 + _628 + _762 + _773 + 192]
            require mem[_608 + _628 + _762 + _773 + 224] == bool(mem[_608 + _628 + _762 + _773 + 224])
            mem[_780 + 192] = mem[_608 + _628 + _762 + _773 + 224]
            require mem[_608 + _628 + _762 + _773 + 256] == bool(mem[_608 + _628 + _762 + _773 + 256])
            mem[_780 + 224] = mem[_608 + _628 + _762 + _773 + 256]
            mem[_770] = _780
            mem[_770 + 32] = mem[_608 + _628 + _762 + 64]
            mem[_770 + 64] = mem[_608 + _628 + _762 + 96]
            mem[_770 + 96] = mem[_608 + _628 + _762 + 128]
            mem[_770 + 128] = mem[_608 + _628 + _762 + 160]
            mem[_770 + 160] = mem[_608 + _628 + _762 + 192]
            mem[s] = _770
            idx = idx + 32
            s = s + 32
            continue 
        if 0 >= mem[(2 * ceil32(return_data.size)) + 160]:
            revert with 0, 50
        _767 = mem[mem[(2 * ceil32(return_data.size)) + 192] + 96]
        if 0 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        _777 = mem[mem[_608 + ceil32(return_data.size) + 32] + 96]
        if mem[mem[(2 * ceil32(return_data.size)) + 192] + 96] / 10^12 > !(mem[mem[_608 + ceil32(return_data.size) + 32] + 96] / 10^12):
            revert with 0, 17
        if not (mem[mem[(2 * ceil32(return_data.size)) + 192] + 96] / 10^12) + (mem[mem[_608 + ceil32(return_data.size) + 32] + 96] / 10^12):
            revert with 0, 'unable to fight in this room'
        call randomGeneratorAddress.0xbf7199 with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _794 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not (_767 / 10^12) + (_777 / 10^12):
            revert with 0, 18
        if mem[_794] % (_767 / 10^12) + (_777 / 10^12) >= _767 / 10^12:
            mem[mem[64] + 4] = stor302[arg1].field_256
            mem[mem[64] + 36] = stor302[arg1].field_0
            call sub_2cfbfde4Address.0xccf19e15 with:
                 gas gas_remaining wei
                args stor302[arg1].field_256, stor302[arg1].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _812 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            stor302[arg1].field_768 = mem[_812]
            stor302[arg1].field_512 = 4
        else:
            mem[mem[64] + 4] = stor302[arg1].field_0
            mem[mem[64] + 36] = stor302[arg1].field_256
            call sub_2cfbfde4Address.0xccf19e15 with:
                 gas gas_remaining wei
                args stor302[arg1].field_0, stor302[arg1].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _813 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            stor302[arg1].field_768 = mem[_813]
            stor302[arg1].field_512 = 3
    else:
        mem[ceil32(return_data.size) + 100] = stor302[arg1].field_256
        staticcall sub_2cfbfde4Address.0x6352211e with:
                gas gas_remaining wei
               args stor302[arg1].field_256
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'not one party of the room'
        mem[(2 * ceil32(return_data.size)) + 96] = 1
        mem[(2 * ceil32(return_data.size)) + 128] = stor302[arg1].field_0
        mem[(2 * ceil32(return_data.size)) + 160] = 0x7197fc9e00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 164] = 32
        mem[(2 * ceil32(return_data.size)) + 196] = 1
        mem[(2 * ceil32(return_data.size)) + 228] = stor302[arg1].field_0
        staticcall sub_2cfbfde4Address.0x7197fc9e with:
                gas gas_remaining wei
               args Array(len=1, data=stor302[arg1].field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _229 = mem[(2 * ceil32(return_data.size)) + 160 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 191 < (2 * ceil32(return_data.size)) + return_data.size + 160
        _231 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 161 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 161
        mem[(4 * ceil32(return_data.size)) + 160] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
        require _229 + (32 * _231) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _229 + 192
        s = (4 * ceil32(return_data.size)) + 192
        while idx < (2 * ceil32(return_data.size)) + _229 + (32 * _231) + 192:
            _419 = mem[idx]
            require mem[idx] <= test266151307()
            require return_data.size + -_229 + -mem[idx] - 32 >= 192
            _429 = mem[64]
            if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 192
            _433 = mem[(2 * ceil32(return_data.size)) + _229 + _419 + 192]
            require mem[(2 * ceil32(return_data.size)) + _229 + _419 + 192] <= test266151307()
            require return_data.size + -_229 + -_419 + -mem[(2 * ceil32(return_data.size)) + _229 + _419 + 192] - 32 >= 256
            _439 = mem[64]
            if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 256
            mem[_439] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + mem[(2 * ceil32(return_data.size)) + _229 + _419 + 192] + 192]
            _445 = mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 224]
            require mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 224] <= test266151307()
            require (2 * ceil32(return_data.size)) + _229 + _419 + _433 + mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 224] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 160
            _449 = mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 224] + 192]
            if mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 224] + 192] > test266151307():
                revert with 0, 65
            _453 = mem[64]
            if mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 224] + 192])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 224] + 192])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 224] + 192])) + 1
            mem[_453] = _449
            require _229 + _419 + _433 + _445 + _449 + 64 <= return_data.size
            t = 0
            while t < _449:
                mem[t + _453 + 32] = mem[t + (2 * ceil32(return_data.size)) + _229 + _419 + _433 + _445 + 224]
                t = t + 32
                continue 
            if ceil32(_449) > _449:
                mem[_453 + _449 + 32] = 0
            mem[_439 + 32] = _453
            mem[_439 + 64] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 256]
            mem[_439 + 96] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 288]
            mem[_439 + 128] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 320]
            mem[_439 + 160] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 352]
            require mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 384] == bool(mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 384])
            mem[_439 + 192] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 384]
            require mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 416] == bool(mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 416])
            mem[_439 + 224] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + _433 + 416]
            mem[_429] = _439
            mem[_429 + 32] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + 224]
            mem[_429 + 64] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + 256]
            mem[_429 + 96] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + 288]
            mem[_429 + 128] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + 320]
            mem[_429 + 160] = mem[(2 * ceil32(return_data.size)) + _229 + _419 + 352]
            mem[s] = _429
            idx = idx + 32
            s = s + 32
            continue 
        _422 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_422]:
            revert with 0, 50
        mem[_422 + 32] = stor302[arg1].field_256
        mem[_422 + 64] = 0x7197fc9e00000000000000000000000000000000000000000000000000000000
        mem[_422 + 68] = 32
        mem[_422 + 100] = mem[_422]
        mem[_422 + 132 len 32 * mem[_422]] = mem[_422 + 32 len 32 * mem[_422]]
        staticcall sub_2cfbfde4Address with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _422 + (32 * mem[_422]) + -mem[64] + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _613 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _630 = mem[_613]
        require mem[_613] <= test266151307()
        require _613 + mem[_613] + 31 < _613 + return_data.size
        _633 = mem[_613 + mem[_613]]
        if mem[_613 + mem[_613]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_613 + mem[_613]]) + 1 < 0 or _613 + ceil32(return_data.size) + ceil32(32 * mem[_613 + mem[_613]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _613 + ceil32(return_data.size) + ceil32(32 * mem[_613 + mem[_613]]) + 1
        mem[_613 + ceil32(return_data.size)] = _633
        require _630 + (32 * _633) + 32 <= return_data.size
        idx = _613 + _630 + 32
        s = _613 + ceil32(return_data.size) + 32
        while idx < _613 + _630 + (32 * _633) + 32:
            _763 = mem[idx]
            require mem[idx] <= test266151307()
            require return_data.size + -_630 + -mem[idx] - 32 >= 192
            _771 = mem[64]
            if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 192
            _775 = mem[_613 + _630 + _763 + 32]
            require mem[_613 + _630 + _763 + 32] <= test266151307()
            require return_data.size + -_630 + -_763 + -mem[_613 + _630 + _763 + 32] - 32 >= 256
            _781 = mem[64]
            if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 256
            mem[_781] = mem[_613 + _630 + _763 + _775 + 32]
            _785 = mem[_613 + _630 + _763 + _775 + 64]
            require mem[_613 + _630 + _763 + _775 + 64] <= test266151307()
            require _613 + _630 + _763 + _775 + mem[_613 + _630 + _763 + _775 + 64] + 63 < _613 + return_data.size
            _793 = mem[_613 + _630 + _763 + _775 + mem[_613 + _630 + _763 + _775 + 64] + 32]
            if mem[_613 + _630 + _763 + _775 + mem[_613 + _630 + _763 + _775 + 64] + 32] > test266151307():
                revert with 0, 65
            _799 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_613 + _630 + _763 + _775 + mem[_613 + _630 + _763 + _775 + 64] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_613 + _630 + _763 + _775 + mem[_613 + _630 + _763 + _775 + 64] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_613 + _630 + _763 + _775 + mem[_613 + _630 + _763 + _775 + 64] + 32])) + 1
            mem[_799] = _793
            require _630 + _763 + _775 + _785 + _793 + 64 <= return_data.size
            t = 0
            while t < _793:
                mem[t + _799 + 32] = mem[t + _613 + _630 + _763 + _775 + _785 + 64]
                t = t + 32
                continue 
            if ceil32(_793) > _793:
                mem[_799 + _793 + 32] = 0
            mem[_781 + 32] = _799
            mem[_781 + 64] = mem[_613 + _630 + _763 + _775 + 96]
            mem[_781 + 96] = mem[_613 + _630 + _763 + _775 + 128]
            mem[_781 + 128] = mem[_613 + _630 + _763 + _775 + 160]
            mem[_781 + 160] = mem[_613 + _630 + _763 + _775 + 192]
            require mem[_613 + _630 + _763 + _775 + 224] == bool(mem[_613 + _630 + _763 + _775 + 224])
            mem[_781 + 192] = mem[_613 + _630 + _763 + _775 + 224]
            require mem[_613 + _630 + _763 + _775 + 256] == bool(mem[_613 + _630 + _763 + _775 + 256])
            mem[_781 + 224] = mem[_613 + _630 + _763 + _775 + 256]
            mem[_771] = _781
            mem[_771 + 32] = mem[_613 + _630 + _763 + 64]
            mem[_771 + 64] = mem[_613 + _630 + _763 + 96]
            mem[_771 + 96] = mem[_613 + _630 + _763 + 128]
            mem[_771 + 128] = mem[_613 + _630 + _763 + 160]
            mem[_771 + 160] = mem[_613 + _630 + _763 + 192]
            mem[s] = _771
            idx = idx + 32
            s = s + 32
            continue 
        if 0 >= mem[(4 * ceil32(return_data.size)) + 160]:
            revert with 0, 50
        _769 = mem[mem[(4 * ceil32(return_data.size)) + 192] + 96]
        if 0 >= mem[_613 + ceil32(return_data.size)]:
            revert with 0, 50
        _779 = mem[mem[_613 + ceil32(return_data.size) + 32] + 96]
        if mem[mem[(4 * ceil32(return_data.size)) + 192] + 96] / 10^12 > !(mem[mem[_613 + ceil32(return_data.size) + 32] + 96] / 10^12):
            revert with 0, 17
        if not (mem[mem[(4 * ceil32(return_data.size)) + 192] + 96] / 10^12) + (mem[mem[_613 + ceil32(return_data.size) + 32] + 96] / 10^12):
            revert with 0, 'unable to fight in this room'
        call randomGeneratorAddress.0xbf7199 with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _796 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not (_769 / 10^12) + (_779 / 10^12):
            revert with 0, 18
        if mem[_796] % (_769 / 10^12) + (_779 / 10^12) >= _769 / 10^12:
            mem[mem[64] + 4] = stor302[arg1].field_256
            mem[mem[64] + 36] = stor302[arg1].field_0
            call sub_2cfbfde4Address.0xccf19e15 with:
                 gas gas_remaining wei
                args stor302[arg1].field_256, stor302[arg1].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _818 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            stor302[arg1].field_768 = mem[_818]
            stor302[arg1].field_512 = 4
        else:
            mem[mem[64] + 4] = stor302[arg1].field_0
            mem[mem[64] + 36] = stor302[arg1].field_256
            call sub_2cfbfde4Address.0xccf19e15 with:
                 gas gas_remaining wei
                args stor302[arg1].field_0, stor302[arg1].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _819 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            stor302[arg1].field_768 = mem[_819]
            stor302[arg1].field_512 = 3
}



}
