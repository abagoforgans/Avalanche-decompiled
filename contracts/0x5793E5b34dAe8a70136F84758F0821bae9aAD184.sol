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
uint8 sub_45e88574; offset 160
uint128 stor303; offset 160
address randomGeneratorAddress;

function sub_1d66216d(?) payable {
    return sub_1d66216d
}

function sub_2cfbfde4(?) payable {
    return sub_2cfbfde4Address
}

function sub_45e88574(?) payable {
    return bool(sub_45e88574)
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

function sub_97368f66(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor303 = Mask(96, 0, bool(arg1))
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
    staticcall sub_2cfbfde4Address.ownerOf(uint256 arg1) with:
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
                if arg2 == stor302[arg1].field_0:
                    revert with 0, 'unable to fight against itself'
                if not sub_45e88574:
                    staticcall sub_2cfbfde4Address.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall sub_2cfbfde4Address.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args stor302[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                        revert with 0, 'unable to fight against troops of the same owner'
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
    staticcall sub_2cfbfde4Address.ownerOf(uint256 arg1) with:
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
        _248 = mem[ceil32(return_data.size) + 160 len 4], 0
        require mem[ceil32(return_data.size) + 160 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 191 < ceil32(return_data.size) + return_data.size + 160
        _250 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]) + 161 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]) + 161
        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], 0 + 160]
        require _248 + (32 * _250) + 32 <= return_data.size
        idx = ceil32(return_data.size) + _248 + 192
        s = (2 * ceil32(return_data.size)) + 192
        while idx < ceil32(return_data.size) + _248 + (32 * _250) + 192:
            _458 = mem[idx]
            require mem[idx] <= test266151307()
            require return_data.size + -_248 + -mem[idx] - 32 >= 192
            _467 = mem[64]
            if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 192
            _471 = mem[ceil32(return_data.size) + _248 + _458 + 192]
            require mem[ceil32(return_data.size) + _248 + _458 + 192] <= test266151307()
            require return_data.size + -_248 + -_458 + -mem[ceil32(return_data.size) + _248 + _458 + 192] - 32 >= 256
            _478 = mem[64]
            if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 256
            mem[_478] = mem[ceil32(return_data.size) + _248 + _458 + mem[ceil32(return_data.size) + _248 + _458 + 192] + 192]
            _483 = mem[ceil32(return_data.size) + _248 + _458 + _471 + 224]
            require mem[ceil32(return_data.size) + _248 + _458 + _471 + 224] <= test266151307()
            require ceil32(return_data.size) + _248 + _458 + _471 + mem[ceil32(return_data.size) + _248 + _458 + _471 + 224] + 223 < ceil32(return_data.size) + return_data.size + 160
            _488 = mem[ceil32(return_data.size) + _248 + _458 + _471 + mem[ceil32(return_data.size) + _248 + _458 + _471 + 224] + 192]
            if mem[ceil32(return_data.size) + _248 + _458 + _471 + mem[ceil32(return_data.size) + _248 + _458 + _471 + 224] + 192] > test266151307():
                revert with 0, 65
            _491 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _248 + _458 + _471 + mem[ceil32(return_data.size) + _248 + _458 + _471 + 224] + 192])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _248 + _458 + _471 + mem[ceil32(return_data.size) + _248 + _458 + _471 + 224] + 192])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _248 + _458 + _471 + mem[ceil32(return_data.size) + _248 + _458 + _471 + 224] + 192])) + 1
            mem[_491] = mem[ceil32(return_data.size) + _248 + _458 + _471 + mem[ceil32(return_data.size) + _248 + _458 + _471 + 224] + 192]
            require _248 + _458 + _471 + _483 + _488 + 64 <= return_data.size
            t = 0
            while t < _488:
                mem[t + _491 + 32] = mem[t + ceil32(return_data.size) + _248 + _458 + _471 + _483 + 224]
                t = t + 32
                continue 
            if ceil32(_488) > _488:
                mem[_491 + _488 + 32] = 0
            mem[_478 + 32] = _491
            mem[_478 + 64] = mem[ceil32(return_data.size) + _248 + _458 + _471 + 256]
            mem[_478 + 96] = mem[ceil32(return_data.size) + _248 + _458 + _471 + 288]
            mem[_478 + 128] = mem[ceil32(return_data.size) + _248 + _458 + _471 + 320]
            mem[_478 + 160] = mem[ceil32(return_data.size) + _248 + _458 + _471 + 352]
            require mem[ceil32(return_data.size) + _248 + _458 + _471 + 384] == bool(mem[ceil32(return_data.size) + _248 + _458 + _471 + 384])
            mem[_478 + 192] = mem[ceil32(return_data.size) + _248 + _458 + _471 + 384]
            require mem[ceil32(return_data.size) + _248 + _458 + _471 + 416] == bool(mem[ceil32(return_data.size) + _248 + _458 + _471 + 416])
            mem[_478 + 224] = mem[ceil32(return_data.size) + _248 + _458 + _471 + 416]
            mem[_467] = _478
            mem[_467 + 32] = mem[ceil32(return_data.size) + _248 + _458 + 224]
            mem[_467 + 64] = mem[ceil32(return_data.size) + _248 + _458 + 256]
            mem[_467 + 96] = mem[ceil32(return_data.size) + _248 + _458 + 288]
            mem[_467 + 128] = mem[ceil32(return_data.size) + _248 + _458 + 320]
            mem[_467 + 160] = mem[ceil32(return_data.size) + _248 + _458 + 352]
            mem[s] = _467
            idx = idx + 32
            s = s + 32
            continue 
        _460 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_460]:
            revert with 0, 50
        mem[_460 + 32] = stor302[arg1].field_256
        mem[_460 + 64] = 0x7197fc9e00000000000000000000000000000000000000000000000000000000
        mem[_460 + 68] = 32
        mem[_460 + 100] = mem[_460]
        mem[_460 + 132 len 32 * mem[_460]] = mem[_460 + 32 len 32 * mem[_460]]
        staticcall sub_2cfbfde4Address with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _460 + (32 * mem[_460]) + -mem[64] + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _668 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _688 = mem[_668]
        require mem[_668] <= test266151307()
        require _668 + mem[_668] + 31 < _668 + return_data.size
        _692 = mem[_668 + mem[_668]]
        if mem[_668 + mem[_668]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_668 + mem[_668]]) + 1 < 0 or _668 + ceil32(return_data.size) + ceil32(32 * mem[_668 + mem[_668]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _668 + ceil32(return_data.size) + ceil32(32 * mem[_668 + mem[_668]]) + 1
        mem[_668 + ceil32(return_data.size)] = _692
        require _688 + (32 * _692) + 32 <= return_data.size
        idx = _668 + _688 + 32
        s = _668 + ceil32(return_data.size) + 32
        while idx < _668 + _688 + (32 * _692) + 32:
            _842 = mem[idx]
            require mem[idx] <= test266151307()
            require return_data.size + -_688 + -mem[idx] - 32 >= 192
            _854 = mem[64]
            if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 192
            _858 = mem[_668 + _688 + _842 + 32]
            require mem[_668 + _688 + _842 + 32] <= test266151307()
            require return_data.size + -_688 + -_842 + -mem[_668 + _688 + _842 + 32] - 32 >= 256
            _860 = mem[64]
            if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 256
            mem[_860] = mem[_668 + _688 + _842 + _858 + 32]
            _868 = mem[_668 + _688 + _842 + _858 + 64]
            require mem[_668 + _688 + _842 + _858 + 64] <= test266151307()
            require _668 + _688 + _842 + _858 + mem[_668 + _688 + _842 + _858 + 64] + 63 < _668 + return_data.size
            _878 = mem[_668 + _688 + _842 + _858 + mem[_668 + _688 + _842 + _858 + 64] + 32]
            if mem[_668 + _688 + _842 + _858 + mem[_668 + _688 + _842 + _858 + 64] + 32] > test266151307():
                revert with 0, 65
            _880 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_668 + _688 + _842 + _858 + mem[_668 + _688 + _842 + _858 + 64] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_668 + _688 + _842 + _858 + mem[_668 + _688 + _842 + _858 + 64] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_668 + _688 + _842 + _858 + mem[_668 + _688 + _842 + _858 + 64] + 32])) + 1
            mem[_880] = _878
            require _688 + _842 + _858 + _868 + _878 + 64 <= return_data.size
            t = 0
            while t < _878:
                mem[t + _880 + 32] = mem[t + _668 + _688 + _842 + _858 + _868 + 64]
                t = t + 32
                continue 
            if ceil32(_878) > _878:
                mem[_880 + _878 + 32] = 0
            mem[_860 + 32] = _880
            mem[_860 + 64] = mem[_668 + _688 + _842 + _858 + 96]
            mem[_860 + 96] = mem[_668 + _688 + _842 + _858 + 128]
            mem[_860 + 128] = mem[_668 + _688 + _842 + _858 + 160]
            mem[_860 + 160] = mem[_668 + _688 + _842 + _858 + 192]
            require mem[_668 + _688 + _842 + _858 + 224] == bool(mem[_668 + _688 + _842 + _858 + 224])
            mem[_860 + 192] = mem[_668 + _688 + _842 + _858 + 224]
            require mem[_668 + _688 + _842 + _858 + 256] == bool(mem[_668 + _688 + _842 + _858 + 256])
            mem[_860 + 224] = mem[_668 + _688 + _842 + _858 + 256]
            mem[_854] = _860
            mem[_854 + 32] = mem[_668 + _688 + _842 + 64]
            mem[_854 + 64] = mem[_668 + _688 + _842 + 96]
            mem[_854 + 96] = mem[_668 + _688 + _842 + 128]
            mem[_854 + 128] = mem[_668 + _688 + _842 + 160]
            mem[_854 + 160] = mem[_668 + _688 + _842 + 192]
            mem[s] = _854
            idx = idx + 32
            s = s + 32
            continue 
        if 0 >= mem[(2 * ceil32(return_data.size)) + 160]:
            revert with 0, 50
        _847 = mem[mem[(2 * ceil32(return_data.size)) + 192] + 160]
        if 0 >= mem[(2 * ceil32(return_data.size)) + 160]:
            revert with 0, 50
        _853 = mem[mem[(2 * ceil32(return_data.size)) + 192] + 96]
        if mem[mem[(2 * ceil32(return_data.size)) + 192] + 96] and mem[mem[(2 * ceil32(return_data.size)) + 192] + 160] > -1 / mem[mem[(2 * ceil32(return_data.size)) + 192] + 96]:
            revert with 0, 17
        if 0 >= mem[_668 + ceil32(return_data.size)]:
            revert with 0, 50
        _865 = mem[mem[_668 + ceil32(return_data.size) + 32] + 160]
        if 0 >= mem[_668 + ceil32(return_data.size)]:
            revert with 0, 50
        _875 = mem[mem[_668 + ceil32(return_data.size) + 32] + 96]
        if mem[mem[_668 + ceil32(return_data.size) + 32] + 96] and mem[mem[_668 + ceil32(return_data.size) + 32] + 160] > -1 / mem[mem[_668 + ceil32(return_data.size) + 32] + 96]:
            revert with 0, 17
        if mem[mem[(2 * ceil32(return_data.size)) + 192] + 96] * mem[mem[(2 * ceil32(return_data.size)) + 192] + 160] / 10^12 > !(mem[mem[_668 + ceil32(return_data.size) + 32] + 96] * mem[mem[_668 + ceil32(return_data.size) + 32] + 160] / 10^12):
            revert with 0, 17
        if not (mem[mem[(2 * ceil32(return_data.size)) + 192] + 96] * mem[mem[(2 * ceil32(return_data.size)) + 192] + 160] / 10^12) + (mem[mem[_668 + ceil32(return_data.size) + 32] + 96] * mem[mem[_668 + ceil32(return_data.size) + 32] + 160] / 10^12):
            revert with 0, 'unable to fight in this room'
        call randomGeneratorAddress.0xbf7199 with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _890 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not (_853 * _847 / 10^12) + (_875 * _865 / 10^12):
            revert with 0, 18
        if mem[_890] % (_853 * _847 / 10^12) + (_875 * _865 / 10^12) >= _853 * _847 / 10^12:
            mem[mem[64] + 4] = stor302[arg1].field_256
            mem[mem[64] + 36] = stor302[arg1].field_0
            call sub_2cfbfde4Address.0xccf19e15 with:
                 gas gas_remaining wei
                args stor302[arg1].field_256, stor302[arg1].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _928 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            stor302[arg1].field_768 = mem[_928]
            stor302[arg1].field_512 = 4
            emit 0x1900ede4: 1
        else:
            mem[mem[64] + 4] = stor302[arg1].field_0
            mem[mem[64] + 36] = stor302[arg1].field_256
            call sub_2cfbfde4Address.0xccf19e15 with:
                 gas gas_remaining wei
                args stor302[arg1].field_0, stor302[arg1].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _929 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            stor302[arg1].field_768 = mem[_929]
            stor302[arg1].field_512 = 3
            emit 0x1900ede4: 0
    else:
        mem[ceil32(return_data.size) + 100] = stor302[arg1].field_256
        staticcall sub_2cfbfde4Address.ownerOf(uint256 arg1) with:
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
        _249 = mem[(2 * ceil32(return_data.size)) + 160 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 191 < (2 * ceil32(return_data.size)) + return_data.size + 160
        _251 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 161 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160]) + 161
        mem[(4 * ceil32(return_data.size)) + 160] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 160 len 4], 0 + 160]
        require _249 + (32 * _251) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _249 + 192
        s = (4 * ceil32(return_data.size)) + 192
        while idx < (2 * ceil32(return_data.size)) + _249 + (32 * _251) + 192:
            _459 = mem[idx]
            require mem[idx] <= test266151307()
            require return_data.size + -_249 + -mem[idx] - 32 >= 192
            _469 = mem[64]
            if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 192
            _473 = mem[(2 * ceil32(return_data.size)) + _249 + _459 + 192]
            require mem[(2 * ceil32(return_data.size)) + _249 + _459 + 192] <= test266151307()
            require return_data.size + -_249 + -_459 + -mem[(2 * ceil32(return_data.size)) + _249 + _459 + 192] - 32 >= 256
            _479 = mem[64]
            if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 256
            mem[_479] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + mem[(2 * ceil32(return_data.size)) + _249 + _459 + 192] + 192]
            _485 = mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 224]
            require mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 224] <= test266151307()
            require (2 * ceil32(return_data.size)) + _249 + _459 + _473 + mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 224] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 160
            _489 = mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 224] + 192]
            if mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 224] + 192] > test266151307():
                revert with 0, 65
            _493 = mem[64]
            if mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 224] + 192])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 224] + 192])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 224] + 192])) + 1
            mem[_493] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 224] + 192]
            require _249 + _459 + _473 + _485 + _489 + 64 <= return_data.size
            t = 0
            while t < _489:
                mem[t + _493 + 32] = mem[t + (2 * ceil32(return_data.size)) + _249 + _459 + _473 + _485 + 224]
                t = t + 32
                continue 
            if ceil32(_489) > _489:
                mem[_493 + _489 + 32] = 0
            mem[_479 + 32] = _493
            mem[_479 + 64] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 256]
            mem[_479 + 96] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 288]
            mem[_479 + 128] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 320]
            mem[_479 + 160] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 352]
            require mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 384] == bool(mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 384])
            mem[_479 + 192] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 384]
            require mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 416] == bool(mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 416])
            mem[_479 + 224] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + _473 + 416]
            mem[_469] = _479
            mem[_469 + 32] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + 224]
            mem[_469 + 64] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + 256]
            mem[_469 + 96] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + 288]
            mem[_469 + 128] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + 320]
            mem[_469 + 160] = mem[(2 * ceil32(return_data.size)) + _249 + _459 + 352]
            mem[s] = _469
            idx = idx + 32
            s = s + 32
            continue 
        _462 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_462]:
            revert with 0, 50
        mem[_462 + 32] = stor302[arg1].field_256
        mem[_462 + 64] = 0x7197fc9e00000000000000000000000000000000000000000000000000000000
        mem[_462 + 68] = 32
        mem[_462 + 100] = mem[_462]
        mem[_462 + 132 len 32 * mem[_462]] = mem[_462 + 32 len 32 * mem[_462]]
        staticcall sub_2cfbfde4Address with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _462 + (32 * mem[_462]) + -mem[64] + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _673 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _690 = mem[_673]
        require mem[_673] <= test266151307()
        require _673 + mem[_673] + 31 < _673 + return_data.size
        _693 = mem[_673 + mem[_673]]
        if mem[_673 + mem[_673]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_673 + mem[_673]]) + 1 < 0 or _673 + ceil32(return_data.size) + ceil32(32 * mem[_673 + mem[_673]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _673 + ceil32(return_data.size) + ceil32(32 * mem[_673 + mem[_673]]) + 1
        mem[_673 + ceil32(return_data.size)] = _693
        require _690 + (32 * _693) + 32 <= return_data.size
        idx = _673 + _690 + 32
        s = _673 + ceil32(return_data.size) + 32
        while idx < _673 + _690 + (32 * _693) + 32:
            _843 = mem[idx]
            require mem[idx] <= test266151307()
            require return_data.size + -_690 + -mem[idx] - 32 >= 192
            _857 = mem[64]
            if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 192
            _859 = mem[_673 + _690 + _843 + 32]
            require mem[_673 + _690 + _843 + 32] <= test266151307()
            require return_data.size + -_690 + -_843 + -mem[_673 + _690 + _843 + 32] - 32 >= 256
            _861 = mem[64]
            if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 256
            mem[_861] = mem[_673 + _690 + _843 + _859 + 32]
            _873 = mem[_673 + _690 + _843 + _859 + 64]
            require mem[_673 + _690 + _843 + _859 + 64] <= test266151307()
            require _673 + _690 + _843 + _859 + mem[_673 + _690 + _843 + _859 + 64] + 63 < _673 + return_data.size
            _879 = mem[_673 + _690 + _843 + _859 + mem[_673 + _690 + _843 + _859 + 64] + 32]
            if mem[_673 + _690 + _843 + _859 + mem[_673 + _690 + _843 + _859 + 64] + 32] > test266151307():
                revert with 0, 65
            _881 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_673 + _690 + _843 + _859 + mem[_673 + _690 + _843 + _859 + 64] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_673 + _690 + _843 + _859 + mem[_673 + _690 + _843 + _859 + 64] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_673 + _690 + _843 + _859 + mem[_673 + _690 + _843 + _859 + 64] + 32])) + 1
            mem[_881] = _879
            require _690 + _843 + _859 + _873 + _879 + 64 <= return_data.size
            t = 0
            while t < _879:
                mem[t + _881 + 32] = mem[t + _673 + _690 + _843 + _859 + _873 + 64]
                t = t + 32
                continue 
            if ceil32(_879) > _879:
                mem[_881 + _879 + 32] = 0
            mem[_861 + 32] = _881
            mem[_861 + 64] = mem[_673 + _690 + _843 + _859 + 96]
            mem[_861 + 96] = mem[_673 + _690 + _843 + _859 + 128]
            mem[_861 + 128] = mem[_673 + _690 + _843 + _859 + 160]
            mem[_861 + 160] = mem[_673 + _690 + _843 + _859 + 192]
            require mem[_673 + _690 + _843 + _859 + 224] == bool(mem[_673 + _690 + _843 + _859 + 224])
            mem[_861 + 192] = mem[_673 + _690 + _843 + _859 + 224]
            require mem[_673 + _690 + _843 + _859 + 256] == bool(mem[_673 + _690 + _843 + _859 + 256])
            mem[_861 + 224] = mem[_673 + _690 + _843 + _859 + 256]
            mem[_857] = _861
            mem[_857 + 32] = mem[_673 + _690 + _843 + 64]
            mem[_857 + 64] = mem[_673 + _690 + _843 + 96]
            mem[_857 + 96] = mem[_673 + _690 + _843 + 128]
            mem[_857 + 128] = mem[_673 + _690 + _843 + 160]
            mem[_857 + 160] = mem[_673 + _690 + _843 + 192]
            mem[s] = _857
            idx = idx + 32
            s = s + 32
            continue 
        if 0 >= mem[(4 * ceil32(return_data.size)) + 160]:
            revert with 0, 50
        _850 = mem[mem[(4 * ceil32(return_data.size)) + 192] + 160]
        if 0 >= mem[(4 * ceil32(return_data.size)) + 160]:
            revert with 0, 50
        _856 = mem[mem[(4 * ceil32(return_data.size)) + 192] + 96]
        if mem[mem[(4 * ceil32(return_data.size)) + 192] + 96] and mem[mem[(4 * ceil32(return_data.size)) + 192] + 160] > -1 / mem[mem[(4 * ceil32(return_data.size)) + 192] + 96]:
            revert with 0, 17
        if 0 >= mem[_673 + ceil32(return_data.size)]:
            revert with 0, 50
        _870 = mem[mem[_673 + ceil32(return_data.size) + 32] + 160]
        if 0 >= mem[_673 + ceil32(return_data.size)]:
            revert with 0, 50
        _877 = mem[mem[_673 + ceil32(return_data.size) + 32] + 96]
        if mem[mem[_673 + ceil32(return_data.size) + 32] + 96] and mem[mem[_673 + ceil32(return_data.size) + 32] + 160] > -1 / mem[mem[_673 + ceil32(return_data.size) + 32] + 96]:
            revert with 0, 17
        if mem[mem[(4 * ceil32(return_data.size)) + 192] + 96] * mem[mem[(4 * ceil32(return_data.size)) + 192] + 160] / 10^12 > !(mem[mem[_673 + ceil32(return_data.size) + 32] + 96] * mem[mem[_673 + ceil32(return_data.size) + 32] + 160] / 10^12):
            revert with 0, 17
        if not (mem[mem[(4 * ceil32(return_data.size)) + 192] + 96] * mem[mem[(4 * ceil32(return_data.size)) + 192] + 160] / 10^12) + (mem[mem[_673 + ceil32(return_data.size) + 32] + 96] * mem[mem[_673 + ceil32(return_data.size) + 32] + 160] / 10^12):
            revert with 0, 'unable to fight in this room'
        call randomGeneratorAddress.0xbf7199 with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _896 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not (_856 * _850 / 10^12) + (_877 * _870 / 10^12):
            revert with 0, 18
        if mem[_896] % (_856 * _850 / 10^12) + (_877 * _870 / 10^12) >= _856 * _850 / 10^12:
            mem[mem[64] + 4] = stor302[arg1].field_256
            mem[mem[64] + 36] = stor302[arg1].field_0
            call sub_2cfbfde4Address.0xccf19e15 with:
                 gas gas_remaining wei
                args stor302[arg1].field_256, stor302[arg1].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _930 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            stor302[arg1].field_768 = mem[_930]
            stor302[arg1].field_512 = 4
            emit 0x1900ede4: 1
        else:
            mem[mem[64] + 4] = stor302[arg1].field_0
            mem[mem[64] + 36] = stor302[arg1].field_256
            call sub_2cfbfde4Address.0xccf19e15 with:
                 gas gas_remaining wei
                args stor302[arg1].field_0, stor302[arg1].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _931 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            stor302[arg1].field_768 = mem[_931]
            stor302[arg1].field_512 = 3
            emit 0x1900ede4: 0
}



}
