contract main {




// =====================  Runtime code  =====================


address owner;
address kinsAddress;
address stor2;
address devaddr;
address kinsmasterAddress;
uint256 _maxReward;

function kinsmaster() payable {
    return kinsmasterAddress
}

function _maxReward() payable {
    return _maxReward
}

function owner() payable {
    return owner
}

function kins() payable {
    return kinsAddress
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        if owner != msg.sender:
            revert with 0, 'dev: wut?'
    devaddr = arg1
}

function setWfarm(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor2 = arg1
    return 0
}

function setKinsMaster(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    kinsmasterAddress = arg1
    emit 0x8b9fa7b9: arg1
    return 0
}

function setMaxReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    _maxReward = arg1
    return 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyOut(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(kinsAddress)
    if not arg3:
        call kinsAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        staticcall kinsAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(kinsAddress)
        call kinsAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sendFromWFarm() payable {
    if devaddr != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only dev'
    require ext_code.size(kinsAddress)
    staticcall kinsAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(kinsAddress)
    if ext_call.return_data[0] >= _maxReward:
        call kinsAddress.0x23b872dd with:
             gas gas_remaining wei
            args stor2, kinsmasterAddress, _maxReward
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(kinsmasterAddress)
        call kinsmasterAddress.0x7181fb9a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(kinsmasterAddress)
        call kinsmasterAddress.0x425c8abd with:
             gas gas_remaining wei
            args _maxReward
    else:
        staticcall kinsAddress.0x70a08231 with:
                gas gas_remaining wei
               args stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(kinsAddress)
        call kinsAddress.0x23b872dd with:
             gas gas_remaining wei
            args stor2, kinsmasterAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(kinsmasterAddress)
        call kinsmasterAddress.0x7181fb9a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(kinsmasterAddress)
        call kinsmasterAddress.0x425c8abd with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1b64639f 
}

function sendfarm() payable {
    if devaddr != msg.sender:
        if owner != msg.sender:
            if kinsmasterAddress != msg.sender:
                revert with 0, 'only dev'
    require ext_code.size(kinsAddress)
    staticcall kinsAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(kinsAddress)
    if ext_call.return_data[0] >= _maxReward:
        call kinsAddress.0xa9059cbb with:
             gas gas_remaining wei
            args kinsmasterAddress, _maxReward
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(kinsmasterAddress)
        call kinsmasterAddress.0x7181fb9a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(kinsmasterAddress)
        call kinsmasterAddress.0x425c8abd with:
             gas gas_remaining wei
            args _maxReward
    else:
        staticcall kinsAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(kinsAddress)
        call kinsAddress.0xa9059cbb with:
             gas gas_remaining wei
            args kinsmasterAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(kinsmasterAddress)
        call kinsmasterAddress.0x7181fb9a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(kinsmasterAddress)
        call kinsmasterAddress.0x425c8abd with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sendfarm()
    return 1
}



}
