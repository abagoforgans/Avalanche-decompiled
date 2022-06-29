contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_e913147bAddress;
mapping of address stor53;
mapping of uint8 stor54;
mapping of address stor55;
array of struct adapters;
mapping of address stor99;
array of address stor25430867293060105608850039578765632174687360837401588464629353882804403134873;

function adapters(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < adapters.length
    return adapters[arg1].field_0
}

function isInstrument(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor54[arg1])
}

function owner() payable {
    return owner
}

function sub_e913147b(?) payable {
    return sub_e913147bAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6805 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6805 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[6767 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_bc4c2212(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor55[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_cb294d8b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor53[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function burnGasTokens() payable {
    if not stor54[msg.sender]:
        revert with 0, 'Caller is not instrument'
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
         gas gas_remaining wei
        args 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        owner = arg1
        emit OwnershipTransferred(0, arg1);
        sub_e913147bAddress = arg2
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[6837 len 46], mem[210 len 18]
        if uint8(stor0.field_8):
            owner = arg1
            emit OwnershipTransferred(0, arg1);
            sub_e913147bAddress = arg2
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            owner = arg1
            emit OwnershipTransferred(0, arg1);
            sub_e913147bAddress = arg2
            uint8(stor0.field_8) = 0
}

function getAdapters() payable {
    if not adapters.length:
        mem[(32 * adapters.length) + 128] = 32
        mem[(32 * adapters.length) + 160] = adapters.length
        mem[(32 * adapters.length) + 192 len floor32(adapters.length)] = mem[128 len floor32(adapters.length)]
        return memory
          from (32 * adapters.length) + 128
           len (96 * adapters.length) + 64
    mem[128] = address(adapters.field_0)
    idx = 128
    s = 0
    while (32 * adapters.length) + 96 > idx:
        mem[idx + 32] = adapters[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * adapters.length) + 192 len floor32(adapters.length)] = mem[128 len floor32(adapters.length)]
    return Array(len=adapters.length, data=mem[128 len floor32(adapters.length)], mem[(32 * adapters.length) + floor32(adapters.length) + 192 len (32 * adapters.length) - floor32(adapters.length)]), 
}

function sub_a91b9f4d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 53
    mem[ceil32(arg1.length) + 128] = stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_39122461(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6805 len 32]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 55
    stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = arg2
    adapters.length++
    stor3839[stor56.length] = arg2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    emit AdapterSet(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), arg2);
}

function sub_c14a4eae(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6805 len 32]
    mem[ceil32(arg2.length) + 128 len 2252] = code.data[4515 len 2252]
    mem[ceil32(arg2.length) + 2380] = arg1
    mem[ceil32(arg2.length) + 2412] = sub_e913147bAddress
    mem[ceil32(arg2.length) + 2444] = 96
    mem[ceil32(arg2.length) + 2476] = arg2.length
    mem[ceil32(arg2.length) + 2508 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), code.data[arg2.length + -ceil32(arg2.length) + 4547 len -arg2.length + ceil32(arg2.length) + 2220], address(arg1), sub_e913147bAddress, 96, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit ProxyCreated(address arg1, address arg2, bytes arg3):
                              Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                              mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                              Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                              arg1,
                              address(create.new_address),
            mem[ceil32(arg2.length) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _567 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] <= 4294967296
            require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 32 <= return_data.size
            require return_data.size >= mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 32 and mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128] <= 4294967296
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128]
            _579 = mem[ceil32(arg2.length) + _567 + 128]
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + _567 + 128])] = mem[ceil32(arg2.length) + _567 + 160 len ceil32(mem[ceil32(arg2.length) + _567 + 128])]
            if not _579 % 32:
                mem[64] = _579 + ceil32(arg2.length) + ceil32(return_data.size) + 160
                mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 160] = 53
                if stor[sha3(mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])]:
                    revert with 0, 'Instrument already exists'
                mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 160] = 53
                stor[sha3(mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])] = address(create.new_address)
                mem[0] = address(create.new_address)
                mem[32] = 54
                stor54[address(create.new_address)] = 1
                mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + 160] = 32
                mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + 192] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]
                mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit InstrumentCreated(string arg1, address arg2):
                                           32,
                                           mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32],
                                           address(create.new_address),
                else:
                    mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + _579 + ceil32(arg2.length) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + _579 + ceil32(arg2.length) + ceil32(return_data.size) + -(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 256 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit InstrumentCreated(Array(len=mem[ceil32(arg2.length) + ceil32(return_data.size) + 128], data=mem[_579 + ceil32(arg2.length) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 32]), address(create.new_address));
            else:
                mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 160] = mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + -(_579 % 32) + 192 len _579 % 32]
                mem[64] = floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 192
                mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 192] = 53
                if stor[sha3(mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])]:
                    revert with 0, 'Instrument already exists'
                mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 192] = 53
                stor[sha3(mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])] = address(create.new_address)
                mem[0] = address(create.new_address)
                mem[32] = 54
                stor54[address(create.new_address)] = 1
                mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 192] = 32
                mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]
                mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit InstrumentCreated(string arg1, address arg2):
                                           32,
                                           mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 224 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32],
                                           address(create.new_address),
                else:
                    mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + -(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 288 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit InstrumentCreated(Array(len=mem[ceil32(arg2.length) + ceil32(return_data.size) + 128], data=mem[floor32(_579) + ceil32(arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 32]), address(create.new_address));
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
            emit ProxyCreated(address arg1, address arg2, bytes arg3):
                              Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                              mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                              arg1,
                              address(create.new_address),
            mem[ceil32(arg2.length) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _573 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] <= 4294967296
            require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 32 <= return_data.size
            require return_data.size >= mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 32 and mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128] <= 4294967296
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128]
            _583 = mem[ceil32(arg2.length) + _573 + 128]
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + _573 + 128])] = mem[ceil32(arg2.length) + _573 + 160 len ceil32(mem[ceil32(arg2.length) + _573 + 128])]
            if not _583 % 32:
                mem[64] = _583 + ceil32(arg2.length) + ceil32(return_data.size) + 160
                mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 160] = 53
                if stor[sha3(mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])]:
                    revert with 0, 'Instrument already exists'
                mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 160] = 53
                stor[sha3(mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])] = address(create.new_address)
                mem[0] = address(create.new_address)
                mem[32] = 54
                stor54[address(create.new_address)] = 1
                mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + 160] = 32
                mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + 192] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]
                mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit InstrumentCreated(string arg1, address arg2):
                                           32,
                                           mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32],
                                           address(create.new_address),
                else:
                    mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + _583 + ceil32(arg2.length) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + _583 + ceil32(arg2.length) + ceil32(return_data.size) + -(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 256 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit InstrumentCreated(Array(len=mem[ceil32(arg2.length) + ceil32(return_data.size) + 128], data=mem[_583 + ceil32(arg2.length) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 32]), address(create.new_address));
            else:
                mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 160] = mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + -(_583 % 32) + 192 len _583 % 32]
                mem[64] = floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 192
                mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 192] = 53
                if stor[sha3(mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])]:
                    revert with 0, 'Instrument already exists'
                mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 192] = 53
                stor[sha3(mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])] = address(create.new_address)
                mem[0] = address(create.new_address)
                mem[32] = 54
                stor54[address(create.new_address)] = 1
                mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 192] = 32
                mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]
                mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit InstrumentCreated(string arg1, address arg2):
                                           32,
                                           mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 224 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32],
                                           address(create.new_address),
                else:
                    mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + -(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 288 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit InstrumentCreated(Array(len=mem[ceil32(arg2.length) + ceil32(return_data.size) + 128], data=mem[floor32(_583) + ceil32(arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 32]), address(create.new_address));
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 2508] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2540 len arg2.length % 32]
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), code.data[arg2.length + -ceil32(arg2.length) + 4547 len -arg2.length + ceil32(arg2.length) + 2220], address(arg1), sub_e913147bAddress, 96, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 2508 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit ProxyCreated(address arg1, address arg2, bytes arg3):
                              Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                              mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                              Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                              arg1,
                              address(create.new_address),
            mem[ceil32(arg2.length) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _570 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] <= 4294967296
            require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 32 <= return_data.size
            require return_data.size >= mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 32 and mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128] <= 4294967296
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128]
            _581 = mem[ceil32(arg2.length) + _570 + 128]
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + _570 + 128])] = mem[ceil32(arg2.length) + _570 + 160 len ceil32(mem[ceil32(arg2.length) + _570 + 128])]
            if not _581 % 32:
                mem[64] = _581 + ceil32(arg2.length) + ceil32(return_data.size) + 160
                mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 160] = 53
                if stor[sha3(mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])]:
                    revert with 0, 'Instrument already exists'
                mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 160] = 53
                stor[sha3(mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])] = address(create.new_address)
                mem[0] = address(create.new_address)
                mem[32] = 54
                stor54[address(create.new_address)] = 1
                mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + 160] = 32
                mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + 192] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]
                mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit InstrumentCreated(string arg1, address arg2):
                                           32,
                                           mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32],
                                           address(create.new_address),
                else:
                    mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + _581 + ceil32(arg2.length) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + _581 + ceil32(arg2.length) + ceil32(return_data.size) + -(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 256 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit InstrumentCreated(Array(len=mem[ceil32(arg2.length) + ceil32(return_data.size) + 128], data=mem[_581 + ceil32(arg2.length) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 32]), address(create.new_address));
            else:
                mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 160] = mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + -(_581 % 32) + 192 len _581 % 32]
                mem[64] = floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 192
                mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 192] = 53
                if stor[sha3(mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])]:
                    revert with 0, 'Instrument already exists'
                mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 192] = 53
                stor[sha3(mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])] = address(create.new_address)
                mem[0] = address(create.new_address)
                mem[32] = 54
                stor54[address(create.new_address)] = 1
                mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 192] = 32
                mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]
                mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit InstrumentCreated(string arg1, address arg2):
                                           32,
                                           mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 224 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32],
                                           address(create.new_address),
                else:
                    mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + -(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 288 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit InstrumentCreated(Array(len=mem[ceil32(arg2.length) + ceil32(return_data.size) + 128], data=mem[floor32(_581) + ceil32(arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 32]), address(create.new_address));
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
            emit ProxyCreated(address arg1, address arg2, bytes arg3):
                              Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                              mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                              Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                              mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                              arg1,
                              address(create.new_address),
            mem[ceil32(arg2.length) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(create.new_address))
            staticcall address(create.new_address).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _575 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] <= 4294967296
            require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 32 <= return_data.size
            require return_data.size >= mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128] + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 32 and mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128] <= 4294967296
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128]
            _584 = mem[ceil32(arg2.length) + _575 + 128]
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + _575 + 128])] = mem[ceil32(arg2.length) + _575 + 160 len ceil32(mem[ceil32(arg2.length) + _575 + 128])]
            if not _584 % 32:
                mem[64] = _584 + ceil32(arg2.length) + ceil32(return_data.size) + 160
                mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 160] = 53
                if stor[sha3(mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])]:
                    revert with 0, 'Instrument already exists'
                mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 160] = 53
                stor[sha3(mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + 160 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])] = address(create.new_address)
                mem[0] = address(create.new_address)
                mem[32] = 54
                stor54[address(create.new_address)] = 1
                mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + 160] = 32
                mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + 192] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]
                mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit InstrumentCreated(string arg1, address arg2):
                                           32,
                                           mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32],
                                           address(create.new_address),
                else:
                    mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + _584 + ceil32(arg2.length) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + _584 + ceil32(arg2.length) + ceil32(return_data.size) + -(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 256 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit InstrumentCreated(Array(len=mem[ceil32(arg2.length) + ceil32(return_data.size) + 128], data=mem[_584 + ceil32(arg2.length) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 32]), address(create.new_address));
            else:
                mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 160] = mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + -(_584 % 32) + 192 len _584 % 32]
                mem[64] = floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 192
                mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 192] = 53
                if stor[sha3(mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])]:
                    revert with 0, 'Instrument already exists'
                mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] = 256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1 and mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 192] or mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 160] and !(256^(-(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 32) - 1)
                mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 192] = 53
                stor[sha3(mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32])] = address(create.new_address)
                mem[0] = address(create.new_address)
                mem[32] = 54
                stor54[address(create.new_address)] = 1
                mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 192] = 32
                mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]
                mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit InstrumentCreated(string arg1, address arg2):
                                           32,
                                           mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 224 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] + 32],
                                           address(create.new_address),
                else:
                    mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + -(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32) + 288 len mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit InstrumentCreated(Array(len=mem[ceil32(arg2.length) + ceil32(return_data.size) + 128], data=mem[floor32(_584) + ceil32(arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 128]) + 32]), address(create.new_address));
    return address(create.new_address)
}



}
