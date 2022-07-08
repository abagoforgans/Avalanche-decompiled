contract main {




// =====================  Runtime code  =====================


address owner;
address PRESALE_FACTORYAddress;
address PRESALE_SETTINGSAddress;
address COUNTRY_LISTAddress;
address WETHAddress;
address TOKEN_VESTINGAddress;

function PRESALE_SETTINGS() {
    return PRESALE_SETTINGSAddress
}

function TOKEN_VESTING() {
    return TOKEN_VESTINGAddress
}

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function PRESALE_FACTORY() {
    return PRESALE_FACTORYAddress
}

function COUNTRY_LIST() {
    return COUNTRY_LISTAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calculateAmountRequired(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg1 and arg5 > -1 / arg1:
        revert with 0, 17
    if arg1 < arg1 * arg5 / 1000:
        revert with 0, 17
    if arg1 - (arg1 * arg5 / 1000) and arg4 > -1 / arg1 - (arg1 * arg5 / 1000):
        revert with 0, 17
    if (arg1 * arg4) - (arg1 * arg5 / 1000 * arg4) and 1000 * arg3 / arg2 > -1 / (arg1 * arg4) - (arg1 * arg5 / 1000 * arg4):
        revert with 0, 17
    if arg1 > !((arg1 * arg4 * 1000 * arg3 / arg2) - (arg1 * arg5 / 1000 * arg4 * 1000 * arg3 / arg2) / 10^6):
        revert with 0, 17
    if arg1 + ((arg1 * arg4 * 1000 * arg3 / arg2) - (arg1 * arg5 / 1000 * arg4 * 1000 * arg3 / arg2) / 10^6) > !(arg1 * arg5 / 1000):
        revert with 0, 17
    return (arg1 + ((arg1 * arg4 * 1000 * arg3 / arg2) - (arg1 * arg5 / 1000 * arg4 * 1000 * arg3 / arg2) / 10^6) + (arg1 * arg5 / 1000))
}

function sub_3bec4821(?) payable {
    require calldata.size - 4 >= 544
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require calldata.size > 163
    require 484 <= calldata.size
    idx = 132
    s = 96
    while idx < 484:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[484] == uint16(cd[484])
    require cd[516] == bool(cd[516])
    staticcall COUNTRY_LISTAddress.countryIsValid(uint16 arg1) with:
            gas gas_remaining wei
           args uint16(cd[484])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'COUNTRY'
    staticcall PRESALE_SETTINGSAddress.getEthCreationFee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != msg.value:
        revert with 0, 'FEE NOT MET'
    staticcall PRESALE_SETTINGSAddress.getEthAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall PRESALE_SETTINGSAddress.getEthCreationFee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(ext_call.return_data[0]) with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(cd[100]):
        if 10000 > mem[96]:
            revert with 0, 'MIN DIVIS'
        staticcall PRESALE_SETTINGSAddress.getMaxPresaleLength() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[384] < mem[352]:
            revert with 0, 17
        require mem[384] - mem[352] <= ext_call.return_data[0]
        if mem[128] and mem[192] > -1 / mem[128]:
            revert with 0, 17
        if mem[128] * mem[192] <= 0:
            revert with 0, 'INVALID PARAMS'
        if mem[256] < 500:
            revert with 0, 'MIN LIQUIDITY'
        if mem[256] > 1000:
            revert with 0, 'MIN LIQUIDITY'
        staticcall PRESALE_SETTINGSAddress.getTokenFee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[288] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if not mem[128]:
            revert with 0, 18
        if mem[96] and ext_call.return_data[0] > -1 / mem[96]:
            revert with 0, 17
        if mem[96] < mem[96] * ext_call.return_data[0] / 1000:
            revert with 0, 17
        if mem[96] - (mem[96] * ext_call.return_data[0] / 1000) and mem[256] > -1 / mem[96] - (mem[96] * ext_call.return_data[0] / 1000):
            revert with 0, 17
        if (mem[96] * mem[256]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256]) and 1000 * mem[288] / mem[128] > -1 / (mem[96] * mem[256]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256]):
            revert with 0, 17
        if mem[96] > !((mem[96] * mem[256] * 1000 * mem[288] / mem[128]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256] * 1000 * mem[288] / mem[128]) / 10^6):
            revert with 0, 17
        if mem[96] + ((mem[96] * mem[256] * 1000 * mem[288] / mem[128]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256] * 1000 * mem[288] / mem[128]) / 10^6) > !(mem[96] * ext_call.return_data[0] / 1000):
            revert with 0, 17
        create contract with 0 wei
                        code: code.data[5005 len 19106], address(this.address), PRESALE_SETTINGSAddress, TOKEN_VESTINGAddress, WETHAddress
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 932 len 128] = 0, msg.sender, address(create.new_address), mem[96] + ((mem[96] * mem[256] * 1000 * mem[288] / mem[128]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256] * 1000 * mem[288] / mem[128]) / 10^6) + (mem[96] * ext_call.return_data[0] / 1000), code.data[5137 len 28]
        call address(cd[36]) with:
           funct uint32(0, msg.sender, address(create.new_address), mem[96] + ((mem[96] * mem[256] * 1000 * mem[288] / mem[128]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256] * 1000 * mem[288] / mem[128]) / 10^6) + (mem[96] * ext_call.return_data[0] / 1000))
             gas gas_remaining wei
            args (Mask(768, -544, code.data[5137 len 28]) << 544)
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        else:
            mem[(8 * ceil32(return_data.size)) + 964 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 964] == bool(mem[(8 * ceil32(return_data.size)) + 964])
                if not mem[(8 * ceil32(return_data.size)) + 964]:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
    else:
        staticcall PRESALE_SETTINGSAddress.referrerIsValid(address arg1) with:
                gas gas_remaining wei
               args address(cd[100])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'INVALID REFERRAL'
        if 10000 > mem[96]:
            revert with 0, 'MIN DIVIS'
        staticcall PRESALE_SETTINGSAddress.getMaxPresaleLength() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[384] < mem[352]:
            revert with 0, 17
        require mem[384] - mem[352] <= ext_call.return_data[0]
        if mem[128] and mem[192] > -1 / mem[128]:
            revert with 0, 17
        if mem[128] * mem[192] <= 0:
            revert with 0, 'INVALID PARAMS'
        if mem[256] < 500:
            revert with 0, 'MIN LIQUIDITY'
        if mem[256] > 1000:
            revert with 0, 'MIN LIQUIDITY'
        staticcall PRESALE_SETTINGSAddress.getTokenFee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[288] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if not mem[128]:
            revert with 0, 18
        if mem[96] and ext_call.return_data[0] > -1 / mem[96]:
            revert with 0, 17
        if mem[96] < mem[96] * ext_call.return_data[0] / 1000:
            revert with 0, 17
        if mem[96] - (mem[96] * ext_call.return_data[0] / 1000) and mem[256] > -1 / mem[96] - (mem[96] * ext_call.return_data[0] / 1000):
            revert with 0, 17
        if (mem[96] * mem[256]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256]) and 1000 * mem[288] / mem[128] > -1 / (mem[96] * mem[256]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256]):
            revert with 0, 17
        if mem[96] > !((mem[96] * mem[256] * 1000 * mem[288] / mem[128]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256] * 1000 * mem[288] / mem[128]) / 10^6):
            revert with 0, 17
        if mem[96] + ((mem[96] * mem[256] * 1000 * mem[288] / mem[128]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256] * 1000 * mem[288] / mem[128]) / 10^6) > !(mem[96] * ext_call.return_data[0] / 1000):
            revert with 0, 17
        create contract with 0 wei
                        code: code.data[5005 len 19106], address(this.address), PRESALE_SETTINGSAddress, TOKEN_VESTINGAddress, WETHAddress
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 932 len 128] = 0, msg.sender, address(create.new_address), mem[96] + ((mem[96] * mem[256] * 1000 * mem[288] / mem[128]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256] * 1000 * mem[288] / mem[128]) / 10^6) + (mem[96] * ext_call.return_data[0] / 1000), code.data[5137 len 28]
        call address(cd[36]) with:
           funct uint32(0, msg.sender, address(create.new_address), mem[96] + ((mem[96] * mem[256] * 1000 * mem[288] / mem[128]) - (mem[96] * ext_call.return_data[0] / 1000 * mem[256] * 1000 * mem[288] / mem[128]) / 10^6) + (mem[96] * ext_call.return_data[0] / 1000))
             gas gas_remaining wei
            args (Mask(768, -544, code.data[5137 len 28]) << 544)
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        else:
            mem[(10 * ceil32(return_data.size)) + 964 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[(10 * ceil32(return_data.size)) + 964] == bool(mem[(10 * ceil32(return_data.size)) + 964])
                if not mem[(10 * ceil32(return_data.size)) + 964]:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
    require ext_code.size(address(create.new_address))
    if 672 * 24 * 3600 <= mem[416]:
        call address(create.new_address).init1(uint16 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint256 arg12) with:
             gas gas_remaining wei
            args cd[484] << 240, mem[96], mem[128], mem[160], mem[192], mem[224], mem[256], mem[288], mem[320], mem[352], mem[384], mem[416]
    else:
        call address(create.new_address).init1(uint16 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint256 arg12) with:
             gas gas_remaining wei
            args cd[484] << 240, mem[96], mem[128], mem[160], mem[192], mem[224], mem[256], mem[288], mem[320], mem[352], mem[384], 672 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall PRESALE_SETTINGSAddress.getBaseFee() with:
            gas gas_remaining wei
    require return_data.size >= 32
    staticcall PRESALE_SETTINGSAddress.getTokenFee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall PRESALE_SETTINGSAddress.getReferralFee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall PRESALE_SETTINGSAddress.0xa46663ed with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).init2(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, address arg8, bool arg9) with:
         gas gas_remaining wei
        args address(cd[4]), address(cd[68]), address(cd[36]), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], address(ext_call.return_data[0]), address(cd[100]), bool(cd[516])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(PRESALE_FACTORYAddress)
    call PRESALE_FACTORYAddress.0x11c065b7 with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
