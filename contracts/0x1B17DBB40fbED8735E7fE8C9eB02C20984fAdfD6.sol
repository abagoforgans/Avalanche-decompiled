contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address registry;

function getAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return registry[arg1]
}

function requireAndGetAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not registry[arg1]:
        revert with 0, 32, 53, 'Name not registered: ', arg1, 0, 0, Mask(168, -256, 'Name not registered: ', arg1, 0, 0) << 256
    return registry[arg1]
}

function registry(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return registry[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function stringToBytes32(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length:
        mem[ceil32(arg1.length) + 128] = mem[128]
    else:
        mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function getAddressByString(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length:
        mem[ceil32(arg1.length) + 128] = registry[mem[128]]
    else:
        mem[ceil32(arg1.length) + 128] = registry[0]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function atomicUpdate(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.register() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.getName() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    registry[ext_call.return_data[0]] = arg1
    require ext_code.size(registry[ext_call.return_data[0]])
    call registry[ext_call.return_data[0]].unregister() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogRegistered(ext_call.return_data[0], arg1);
}

function importContracts(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).getName() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        mem[0] = ext_call.return_data[0]
        mem[32] = 1
        registry[ext_call.return_data[0]] = address(cd[((32 * idx) + arg1 + 36)])
        mem[96] = ext_call.return_data[0]
        emit LogRegistered(ext_call.return_data[0], address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function importAddresses(bytes32[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length != arg2.length:
        revert with 0, 'Input lengths must match'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 1
        registry[cd[((32 * idx) + arg1 + 36)]] = address(cd[((32 * idx) + arg2 + 36)])
        require idx < arg2.length
        require idx < arg1.length
        mem[96] = cd[((32 * idx) + arg1 + 36)]
        emit LogRegistered(cd[((32 * idx) + arg1 + 36)], address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        continue 
}



}
