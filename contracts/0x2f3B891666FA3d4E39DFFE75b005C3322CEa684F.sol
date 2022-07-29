contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sourceOfAsset;

function owner() payable {
    return owner
}

function getSourceOfAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sourceOfAsset[address(arg1)]
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
    if not sourceOfAsset[address(arg1)]:
        revert with 0, 'SOURCE_IS_MISSING'
    require ext_code.size(sourceOfAsset[address(arg1)])
    staticcall sourceOfAsset[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(sourceOfAsset[address(arg1)])
    staticcall sourceOfAsset[address(arg1)].decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'INVALID_PRICE'
    if ext_call.return_data[31 len 1] <= 0:
        revert with 0, 'INVALID_DECIMALS'
    return ext_call.return_data[31 len 1], ext_call.return_data[32]
}

function sub_2d664ca2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sourceOfAsset[address(arg1)]:
        revert with 0, 'SOURCE_IS_MISSING'
    require ext_code.size(sourceOfAsset[address(arg1)])
    staticcall sourceOfAsset[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(sourceOfAsset[address(arg1)])
    staticcall sourceOfAsset[address(arg1)].decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'INVALID_PRICE'
    if ext_call.return_data[31 len 1] <= 0:
        revert with 0, 'INVALID_DECIMALS'
    if 1000000000000000000 * 10^18 > !(uint8(ext_call.return_data[0]) / 2):
        revert with 0, 17
    if not ext_call.return_data[31 len 1]:
        revert with 0, 18
    if (uint8(ext_call.return_data[0]) / 2) + 1000000000000000000 * 10^18 / ext_call.return_data[31 len 1] <= 0:
        revert with 0, 'INVALID_PRICE'
    return ((uint8(ext_call.return_data[0]) / 2) + 1000000000000000000 * 10^18 / ext_call.return_data[31 len 1])
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
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        sourceOfAsset[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        emit AssetSourceUpdated(mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * arg1.length) + 172 len 20]);
        if idx == -1:
            revert with 0, 17
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
        revert with 0, 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 1
            if not sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])]:
                revert with 0, 'SOURCE_IS_MISSING'
            require ext_code.size(sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])])
            staticcall sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])].latestRoundData() with:
                    gas gas_remaining wei
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_68] == mem[_68 + 22 len 10]
            _72 = mem[_68 + 32]
            require mem[_68 + 128] == mem[_68 + 150 len 10]
            require ext_code.size(sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])])
            staticcall sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])].decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_84] == mem[_84 + 31 len 1]
            if _72 <= 0:
                revert with 0, 'INVALID_PRICE'
            if mem[_84 + 31 len 1] <= 0:
                revert with 0, 'INVALID_DECIMALS'
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_84 + 31 len 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 1
            if not sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])]:
                revert with 0, 'SOURCE_IS_MISSING'
            require ext_code.size(sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])])
            staticcall sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])].latestRoundData() with:
                    gas gas_remaining wei
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_69] == mem[_69 + 22 len 10]
            _75 = mem[_69 + 32]
            require mem[_69 + 128] == mem[_69 + 150 len 10]
            require ext_code.size(sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])])
            staticcall sourceOfAsset[address(cd[((32 * idx) + arg1 + 36)])].decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_85] == mem[_85 + 31 len 1]
            if _75 <= 0:
                revert with 0, 'INVALID_PRICE'
            if mem[_85 + 31 len 1] <= 0:
                revert with 0, 'INVALID_DECIMALS'
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_85 + 31 len 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
