contract main {




// =====================  Runtime code  =====================


#
#  - sub_1fe9578e(?)
#  - withdraw(uint256 arg1, uint256[] arg2)
#  - invest(uint256 arg1, uint256[] arg2)
#
address sub_59541f5bAddress; offset 16
address sub_6d25c352Address;
address sub_de1f21b2Address;
address vaultAddress;
address sub_e4fcd2f8Address;
address sub_28437174Address;
bool stor6;
uint256 stor6; offset 1
uint256 watermark;
uint256 profitFeePerc;

function sub_28437174(?) payable {
    return sub_28437174Address
}

function sub_59541f5b(?) payable {
    return sub_59541f5bAddress
}

function sub_6d25c352(?) payable {
    return sub_6d25c352Address
}

function sub_de1f21b2(?) payable {
    return sub_de1f21b2Address
}

function sub_e4fcd2f8(?) payable {
    return sub_e4fcd2f8Address
}

function profitFeePerc() payable {
    return profitFeePerc
}

function watermark() payable {
    return watermark
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function setProfitFeePerc(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        revert with 0, 'Only vault'
    profitFeePerc = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if vaultAddress:
        revert with 0, 'Vault set'
    vaultAddress = arg1
}

function adjustWatermark(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if vaultAddress != msg.sender:
        revert with 0, 'Only vault'
    if arg2 == 1:
        if watermark > !arg1:
            revert with 0, 17
        watermark += arg1
        emit AdjustWatermark(watermark + arg1, watermark);
    else:
        if watermark < arg1:
            revert with 0, 17
        watermark -= arg1
        emit AdjustWatermark(watermark - arg1, watermark);
}

function getEachPool() payable {
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0xbd244af4 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return ''
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return '', 0, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return '', ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return '', 
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 32, 3, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 0
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return 32, 3, 
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               0,
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 32, 3, 
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               0
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return Array(len=3, data=ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
}

function getAllPoolInUSD() payable {
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0xbd244af4 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        return (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        return (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        return (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    return (3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}

function getCurrentCompositionPerc() payable {
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0xbd244af4 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            return Array(len=3, data=0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            return Array(len=3, data=0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        return Array(len=3, data=0 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 18
            return Array(len=3, data=10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        return Array(len=3, data=10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 18
        return Array(len=3, data=10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 18
    return Array(len=3, data=10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
}

function emergencyWithdraw() payable {
    if vaultAddress != msg.sender:
        revert with 0, 'Only vault'
    mem[100] = this.address
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = 10^18 * ext_call.return_data[0] / 10^18
    require ext_code.size(sub_e4fcd2f8Address)
    call sub_e4fcd2f8Address.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args (10^18 * ext_call.return_data[0] / 10^18)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = this.address
    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd, 0xc7198437980c041c805a1edcba50c1ce5db951, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    mem[(4 * ceil32(return_data.size)) + 160] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 0
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 388
    t = (4 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _811 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _812 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _812
    require (32 * _812) + _811 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _812)] = mem[(4 * ceil32(return_data.size)) + _811 + 224 len ceil32(32 * _812)]
    if 1 >= _812:
        revert with 0, 50
    _4320 = mem[(6 * ceil32(return_data.size)) + 256]
    if ext_call.return_data[32] > !mem[(6 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    mem[mem[64] + 32] = ext_call.return_data[32] + mem[(6 * ceil32(return_data.size)) + 256]
    emit 0xf0365d82: ext_call.return_data[0], ext_call.return_data[32] + _4320
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4325 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4326 = mem[_4325]
    if mem[_4325] and 10^18 > -1 / mem[_4325]:
        revert with 0, 17
    mem[mem[64] + 4] = 10^18 * mem[_4325] / 10^18
    require ext_code.size(sub_28437174Address)
    call sub_28437174Address.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args (10^18 * _4326 / 10^18)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4329 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4330 = mem[_4329]
    mem[mem[64] + 36] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[mem[64] + 68] = _4330
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = this.address
    mem[mem[64] + 196] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0x60781c2586d68229fde47564546784ab3faca982, 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, _4330, 0, 0, address(this.address), block.timestamp
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4333 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _4334 = mem[_4333]
    _4335 = mem[_4333 + 32]
    _4336 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_4336]:
        revert with 0, 50
    mem[_4336 + 32] = 0x60781c2586d68229fde47564546784ab3faca982
    if 1 >= mem[_4336]:
        revert with 0, 50
    mem[_4336 + 64] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[_4336 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_4336 + 100] = _4334
    mem[_4336 + 132] = 0
    mem[_4336 + 164] = 160
    mem[_4336 + 260] = mem[_4336]
    idx = 0
    s = _4336 + 292
    t = _4336 + 32
    while idx < mem[_4336]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_4336 + 196] = this.address
    mem[_4336 + 228] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _4336 + (32 * mem[_4336]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _7968 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _7969 = mem[_7968]
    require mem[_7968] <= test266151307()
    require _7968 + mem[_7968] + 31 < _7968 + return_data.size
    _7970 = mem[_7968 + mem[_7968]]
    if mem[_7968 + mem[_7968]] > test266151307():
        revert with 0, 65
    if _7968 + ceil32(return_data.size) + ceil32(32 * mem[_7968 + mem[_7968]]) + 1 > test266151307() or ceil32(32 * mem[_7968 + mem[_7968]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _7968 + ceil32(return_data.size) + ceil32(32 * mem[_7968 + mem[_7968]]) + 1
    mem[_7968 + ceil32(return_data.size)] = _7970
    require (32 * _7970) + _7969 + 32 <= return_data.size
    mem[_7968 + ceil32(return_data.size) + 32 len ceil32(32 * _7970)] = mem[_7968 + _7969 + 32 len ceil32(32 * _7970)]
    if 1 >= _7970:
        revert with 0, 50
    _11593 = mem[_7968 + ceil32(return_data.size) + 64]
    if _4335 > !mem[_7968 + ceil32(return_data.size) + 64]:
        revert with 0, 17
    if _4335 + mem[_7968 + ceil32(return_data.size) + 64] > 0x295fad40a57eb50295fad40a57eb50295fad40a57eb50295fad40a57eb50295:
        revert with 0, 17
    mem[mem[64] + 4] = 1
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = _4335 + _11593
    mem[mem[64] + 100] = (99 * _4335) + (99 * _11593) / 100
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 1, 0, _4335 + _11593, (99 * _4335) + (99 * _11593) / 100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11620 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _11627 = mem[_11620]
    mem[mem[64] + 32] = mem[_11620]
    emit 0x5ad0fa32: _4330, _11627
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11656 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _11662 = mem[_11656]
    if mem[_11656] and 10^18 > -1 / mem[_11656]:
        revert with 0, 17
    mem[mem[64] + 4] = 10^18 * mem[_11656] / 10^18
    require ext_code.size(sub_de1f21b2Address)
    call sub_de1f21b2Address.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args (10^18 * _11662 / 10^18)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11680 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _11687 = mem[_11680]
    mem[mem[64] + 36] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    mem[mem[64] + 68] = _11687
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = this.address
    mem[mem[64] + 196] = block.timestamp
    require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
    call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0x4c9b4e1ac6f24cde3660d5e4ef1ebf77c710c084, 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, _11687, 0, 0, address(this.address), block.timestamp
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11704 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _11714 = mem[_11704]
    _11715 = mem[_11704 + 32]
    _11727 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_11727]:
        revert with 0, 50
    mem[_11727 + 32] = 0x4c9b4e1ac6f24cde3660d5e4ef1ebf77c710c084
    if 1 >= mem[_11727]:
        revert with 0, 50
    mem[_11727 + 64] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    mem[_11727 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_11727 + 100] = _11714
    mem[_11727 + 132] = 0
    mem[_11727 + 164] = 160
    mem[_11727 + 260] = mem[_11727]
    idx = 0
    s = _11727 + 292
    t = _11727 + 32
    while idx < mem[_11727]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_11727 + 196] = this.address
    mem[_11727 + 228] = block.timestamp
    require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
    call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _11727 + (32 * mem[_11727]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _15222 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _15228 = mem[_15222]
    require mem[_15222] <= test266151307()
    require _15222 + mem[_15222] + 31 < _15222 + return_data.size
    _15234 = mem[_15222 + mem[_15222]]
    if mem[_15222 + mem[_15222]] > test266151307():
        revert with 0, 65
    if _15222 + ceil32(return_data.size) + ceil32(32 * mem[_15222 + mem[_15222]]) + 1 > test266151307() or ceil32(32 * mem[_15222 + mem[_15222]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _15222 + ceil32(return_data.size) + ceil32(32 * mem[_15222 + mem[_15222]]) + 1
    mem[_15222 + ceil32(return_data.size)] = _15234
    require (32 * _15234) + _15228 + 32 <= return_data.size
    mem[_15222 + ceil32(return_data.size) + 32 len ceil32(32 * _15234)] = mem[_15222 + _15228 + 32 len ceil32(32 * _15234)]
    if 1 >= _15234:
        revert with 0, 50
    _18684 = mem[_15222 + ceil32(return_data.size) + 64]
    if _11715 > !mem[_15222 + ceil32(return_data.size) + 64]:
        revert with 0, 17
    _18738 = mem[0]
    if _11715 + mem[_15222 + ceil32(return_data.size) + 64] / 10^12 > 0x295fad40a57eb50295fad40a57eb50295fad40a57eb50295fad40a57eb50295:
        revert with 0, 17
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = _11715 + _18684
    mem[mem[64] + 100] = 99 * _11715 + _18684 / 10^12 / 100
    require ext_code.size(0x7f90122bf0700f9e7e1f688fe926940e8839f353)
    call 0x7f90122bf0700f9e7e1f688fe926940e8839f353.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, _11715 + _18684, 99 * _11715 + _18684 / 10^12 / 100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _18846 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _18888 = mem[_18846]
    mem[mem[64] + 32] = mem[_18846]
    emit 0x6c2fe571: _11687, _18888
    mem[mem[64] + 4] = this.address
    mem[0] = _18738
    require ext_code.size(0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951)
    staticcall 0xfe000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _19134 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _19182 = mem[_19134]
    mem[0] = _18738
    _19290 = mem[64]
    mem[mem[64] + 36] = vaultAddress
    mem[mem[64] + 68] = _19182
    _19344 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_19290 + 100] = 32
    mem[_19290 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db951):
        revert with 0, 'Address: call to non-contract'
    _19590 = mem[_19344]
    mem[_19290 + 164 len ceil32(mem[_19344])] = mem[_19344 + 32 len ceil32(mem[_19344])]
    if ceil32(_19590) > _19590:
        mem[_19590 + _19290 + 164] = 0
    call 0x00c7198437980c041c805a1edcba50c1ce5db951 with:
         gas gas_remaining wei
        args mem[_19290 + 168 len _19590 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_19290 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_19290 + 196] == bool(mem[_19290 + 196])
            if not mem[_19290 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    watermark = 0
    emit EmergencyWithdraw(_19182);
}

function collectProfitAndUpdateWatermark() payable {
    if vaultAddress != msg.sender:
        revert with 0, 'Only vault'
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0xbd244af4 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 <= watermark:
                    emit CollectProfitAndUpdateWatermark(0, watermark, 0);
                    return 0
                if 0 < watermark:
                    revert with 0, 17
                if -watermark and profitFeePerc > -1 / -watermark:
                    revert with 0, 17
                watermark = 0
                emit CollectProfitAndUpdateWatermark(0, watermark, -1 * watermark * profitFeePerc / 10000);
                return -1 * watermark * profitFeePerc / 10000, 0
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_de1f21b2Address)
            staticcall sub_de1f21b2Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
                emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
                return 0, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
                revert with 0, 17
            watermark = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000, 
                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_28437174Address)
        staticcall sub_28437174Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
                emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
                return 0, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
                revert with 0, 17
            watermark = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000, 
                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
            emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
            return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
            revert with 0, 17
        if (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
            revert with 0, 17
        bool(stor6.field_0) = 0
        uint255(stor6.field_1) = uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000, 
               2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e4fcd2f8Address)
    staticcall sub_e4fcd2f8Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
                emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
                return 0, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
                revert with 0, 17
            watermark = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            emit CollectProfitAndUpdateWatermark(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000, 
                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_de1f21b2Address)
        staticcall sub_de1f21b2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
            emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
            return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
            revert with 0, 17
        if (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
            revert with 0, 17
        bool(stor6.field_0) = 0
        uint255(stor6.field_1) = uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000, 
               2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_28437174Address)
    staticcall sub_28437174Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !0:
            revert with 0, 17
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
            emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
            return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
            revert with 0, 17
        if (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
            revert with 0, 17
        bool(stor6.field_0) = 0
        uint255(stor6.field_1) = uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000, 
               2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_de1f21b2Address)
    staticcall sub_de1f21b2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    if 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    if 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] <= watermark:
        emit CollectProfitAndUpdateWatermark(3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, 0);
        return 0, 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    if 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < watermark:
        revert with 0, 17
    if (3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark and profitFeePerc > -1 / (3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - watermark:
        revert with 0, 17
    watermark = 3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    emit CollectProfitAndUpdateWatermark(3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000, 
           3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
}



}
