contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256[] arg2)
#  - initialize(address arg1, address arg2, address arg3)
#  - emergencyWithdraw()
#  - invest(uint256 arg1, uint256[] arg2)
#
address sub_e1ee05afAddress; offset 16
address sub_e9d212c7Address;
address sub_01a906c8Address;
address vaultAddress;
bool stor4;
uint256 stor4; offset 1
uint256 watermark;
uint256 profitFeePerc;

function sub_01a906c8(?) payable {
    return sub_01a906c8Address
}

function sub_e1ee05af(?) payable {
    return sub_e1ee05afAddress
}

function sub_e9d212c7(?) payable {
    return sub_e9d212c7Address
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
    require ext_code.size(sub_e1ee05afAddress)
    staticcall sub_e1ee05afAddress.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_e9d212c7Address)
        staticcall sub_e9d212c7Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_01a906c8Address)
            staticcall sub_01a906c8Address.0xbd244af4 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return ''
            require ext_code.size(sub_01a906c8Address)
            staticcall sub_01a906c8Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_01a906c8Address)
            staticcall sub_01a906c8Address.0x70a08231 with:
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
        require ext_code.size(sub_e9d212c7Address)
        staticcall sub_e9d212c7Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e9d212c7Address)
        staticcall sub_e9d212c7Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return '', ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x70a08231 with:
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
    require ext_code.size(sub_e1ee05afAddress)
    staticcall sub_e1ee05afAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e1ee05afAddress)
    staticcall sub_e1ee05afAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_e9d212c7Address)
    staticcall sub_e9d212c7Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 32, 3, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 0
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x70a08231 with:
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
    require ext_code.size(sub_e9d212c7Address)
    staticcall sub_e9d212c7Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e9d212c7Address)
    staticcall sub_e9d212c7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_01a906c8Address)
    staticcall sub_01a906c8Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 32, 3, 
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               0
    require ext_code.size(sub_01a906c8Address)
    staticcall sub_01a906c8Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_01a906c8Address)
    staticcall sub_01a906c8Address.0x70a08231 with:
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
    require ext_code.size(sub_e1ee05afAddress)
    staticcall sub_e1ee05afAddress.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_e9d212c7Address)
        staticcall sub_e9d212c7Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_01a906c8Address)
            staticcall sub_01a906c8Address.0xbd244af4 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            require ext_code.size(sub_01a906c8Address)
            staticcall sub_01a906c8Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_01a906c8Address)
            staticcall sub_01a906c8Address.0x70a08231 with:
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
        require ext_code.size(sub_e9d212c7Address)
        staticcall sub_e9d212c7Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e9d212c7Address)
        staticcall sub_e9d212c7Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0xbd244af4 with:
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
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x70a08231 with:
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
    require ext_code.size(sub_e1ee05afAddress)
    staticcall sub_e1ee05afAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e1ee05afAddress)
    staticcall sub_e1ee05afAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_e9d212c7Address)
    staticcall sub_e9d212c7Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0xbd244af4 with:
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
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x70a08231 with:
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
    require ext_code.size(sub_e9d212c7Address)
    staticcall sub_e9d212c7Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e9d212c7Address)
    staticcall sub_e9d212c7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_01a906c8Address)
    staticcall sub_01a906c8Address.0xbd244af4 with:
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
    require ext_code.size(sub_01a906c8Address)
    staticcall sub_01a906c8Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_01a906c8Address)
    staticcall sub_01a906c8Address.0x70a08231 with:
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

function collectProfitAndUpdateWatermark() payable {
    if vaultAddress != msg.sender:
        revert with 0, 'Only vault'
    require ext_code.size(sub_e1ee05afAddress)
    staticcall sub_e1ee05afAddress.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_e9d212c7Address)
        staticcall sub_e9d212c7Address.0xbd244af4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_01a906c8Address)
            staticcall sub_01a906c8Address.0xbd244af4 with:
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
            require ext_code.size(sub_01a906c8Address)
            staticcall sub_01a906c8Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_01a906c8Address)
            staticcall sub_01a906c8Address.0x70a08231 with:
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
        require ext_code.size(sub_e9d212c7Address)
        staticcall sub_e9d212c7Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e9d212c7Address)
        staticcall sub_e9d212c7Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0xbd244af4 with:
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
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x70a08231 with:
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
        bool(stor4.field_0) = 0
        uint255(stor4.field_1) = uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000, 
               2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_code.size(sub_e1ee05afAddress)
    staticcall sub_e1ee05afAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e1ee05afAddress)
    staticcall sub_e1ee05afAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_e9d212c7Address)
    staticcall sub_e9d212c7Address.0xbd244af4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0xbd244af4 with:
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
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_01a906c8Address)
        staticcall sub_01a906c8Address.0x70a08231 with:
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
        bool(stor4.field_0) = 0
        uint255(stor4.field_1) = uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000, 
               2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_code.size(sub_e9d212c7Address)
    staticcall sub_e9d212c7Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e9d212c7Address)
    staticcall sub_e9d212c7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_01a906c8Address)
    staticcall sub_01a906c8Address.0xbd244af4 with:
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
        bool(stor4.field_0) = 0
        uint255(stor4.field_1) = uint255(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        emit CollectProfitAndUpdateWatermark(2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], watermark, (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000);
        return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * profitFeePerc) - (watermark * profitFeePerc) / 10000, 
               2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_code.size(sub_01a906c8Address)
    staticcall sub_01a906c8Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_01a906c8Address)
    staticcall sub_01a906c8Address.0x70a08231 with:
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
