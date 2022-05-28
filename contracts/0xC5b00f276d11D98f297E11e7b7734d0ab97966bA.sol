contract main {




// =====================  Runtime code  =====================


address owner;
address sub_529eef2cAddress;
address uniV2factoryAddress;
mapping of uint8 stor3;

function uniV2factory() payable {
    return uniV2factoryAddress
}

function sub_529eef2c(?) payable {
    return sub_529eef2cAddress
}

function owner() payable {
    return owner
}

function isStable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
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

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniV2factoryAddress = arg1
}

function sub_dba71376(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_529eef2cAddress = address(arg1)
}

function sub_b3140fe7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = uint8(bool(arg2))
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

function priceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[address(arg1)]:
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            return 1000000000000000000 * 10^18
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 18
            return (1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if not t * s:
            revert with 'NH{q', 18
        return (1000000000000000000 * 10^18 / t * s)
    staticcall uniV2factoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), sub_529eef2cAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall sub_529eef2cAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_ddf82f71(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).0x6b735cca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall address(arg1).0x42294bfe with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor3[ext_call.return_data[12 len 20]]:
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[0] and 1000000000000000000 * 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            staticcall address(arg1).glbDebtVal() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            staticcall address(arg1).config() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall address(ext_call.return_data[0]).interestModel() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            staticcall address(ext_call.return_data[0]).getInterestRate(uint256 arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 8760 * 24 * 3600 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            staticcall address(ext_call.return_data[0]).getReservePoolBps() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 10000 < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 and 10000 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14:
                revert with 'NH{q', 17
            if 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0] and -ext_call.return_data[0] + 10000 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18, 
                   10000 * ext_call.return_data[0] / ext_call.return_data[0],
                   8760 * 24 * 3600 * ext_call.return_data[0] / 10^14,
                   (10000 * 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]) - (ext_call.return_data[0] * 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]) / 100 * 10^6
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] and 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            staticcall address(arg1).glbDebtVal() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            staticcall address(arg1).config() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall address(ext_call.return_data[0]).interestModel() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            staticcall address(ext_call.return_data[0]).getInterestRate(uint256 arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 8760 * 24 * 3600 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            staticcall address(ext_call.return_data[0]).getReservePoolBps() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 10000 < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 and 10000 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14:
                revert with 'NH{q', 17
            if 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0] and -ext_call.return_data[0] + 10000 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            return ext_call.return_data[0] * 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0]) / 10^18, 
                   10000 * ext_call.return_data[0] / ext_call.return_data[0],
                   8760 * 24 * 3600 * ext_call.return_data[0] / 10^14,
                   (10000 * 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]) - (ext_call.return_data[0] * 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]) / 100 * 10^6
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if not t * s:
            revert with 'NH{q', 18
        if ext_call.return_data[0] and 1000000000000000000 * 10^18 / t * s > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        staticcall address(arg1).glbDebtVal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        staticcall address(arg1).config() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).interestModel() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        staticcall address(ext_call.return_data[0]).getInterestRate(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 8760 * 24 * 3600 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        staticcall address(ext_call.return_data[0]).getReservePoolBps() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 10000 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 and 10000 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14:
            revert with 'NH{q', 17
        if 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0] and -ext_call.return_data[0] + 10000 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        return ext_call.return_data[0] * 1000000000000000000 * 10^18 / t * s / 10^18, 
               10000 * ext_call.return_data[0] / ext_call.return_data[0],
               8760 * 24 * 3600 * ext_call.return_data[0] / 10^14,
               (10000 * 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]) - (ext_call.return_data[0] * 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]) / 100 * 10^6
    staticcall uniV2factoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), sub_529eef2cAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall sub_529eef2cAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    staticcall address(arg1).glbDebtVal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    staticcall address(arg1).config() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).interestModel() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    staticcall address(ext_call.return_data[0]).getInterestRate(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 8760 * 24 * 3600 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    staticcall address(ext_call.return_data[0]).getReservePoolBps() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 10000 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 and 10000 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14:
        revert with 'NH{q', 17
    if 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0] and -ext_call.return_data[0] + 10000 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18, 
           10000 * ext_call.return_data[0] / ext_call.return_data[0],
           8760 * 24 * 3600 * ext_call.return_data[0] / 10^14,
           (10000 * 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]) - (ext_call.return_data[0] * 8760 * 24 * 3600 * ext_call.return_data[0] / 10^14 * 10000 * ext_call.return_data[0] / ext_call.return_data[0]) / 100 * 10^6
}



}
