contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sourceOfAsset;
address eTHAddress;

function owner() payable {
    return owner
}

function getSourceOfAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sourceOfAsset[address(arg1)]
}

function getETHAddress() payable {
    return eTHAddress
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

function setETHAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ADDRESS_IS_ZERO'
    eTHAddress = arg1
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

function getAssetPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if eTHAddress == arg1:
        return 10^18
    if not sourceOfAsset[address(arg1)]:
        revert with 0, 'SOURCE_IS_MISSING'
    require ext_code.size(sourceOfAsset[address(arg1)])
    staticcall sourceOfAsset[address(arg1)].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'INVALID_PRICE'
    return ext_call.return_data[0]
}

function sub_0fa3977b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if eTHAddress == address(arg1):
        return 10^18
    if not sourceOfAsset[address(arg1)]:
        revert with 0, 'SOURCE_IS_MISSING'
    require ext_code.size(sourceOfAsset[address(arg1)])
    staticcall sourceOfAsset[address(arg1)].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'INVALID_PRICE'
    if 1000000000000000000 * 10^18 > !(ext_call.return_data[0] / 2):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if (ext_call.return_data[0] / 2) + 1000000000000000000 * 10^18 / ext_call.return_data[0] <= 0:
        revert with 0, 'INVALID_PRICE'
    return ((ext_call.return_data[0] / 2) + 1000000000000000000 * 10^18 / ext_call.return_data[0])
}

function setAssetSources(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg1.length != arg2.length:
        revert with 0, 'INCONSISTENT_PARAMS_LENGTH'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        sourceOfAsset[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        emit AssetSourceUpdated(mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * arg1.length) + 172 len 20]);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getAssetsPrices(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 1
            if eTHAddress == address(cd[((32 * idx) + arg1 + 36)]):
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 10^18
            else:
                if not sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])]:
                    revert with 0, 'SOURCE_IS_MISSING'
                require ext_code.size(sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])])
                staticcall sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])].latestAnswer() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _52 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_52] <= 0:
                    revert with 0, 'INVALID_PRICE'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_52]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 1
            if eTHAddress == address(cd[((32 * idx) + arg1 + 36)]):
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 10^18
            else:
                if not sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])]:
                    revert with 0, 'SOURCE_IS_MISSING'
                require ext_code.size(sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])])
                staticcall sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])].latestAnswer() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _53 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_53] <= 0:
                    revert with 0, 'INVALID_PRICE'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_53]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
