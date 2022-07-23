contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address accessControlsAddress;
address sub_726aba7fAddress;
address newAddress;
uint256 minimumFee;
mapping of uint8 stor4;
array of address sub_96102cf4;
uint32 stor6;
address misoDivAddress;
uint256 stor6;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function minimumFee() {
    return minimumFee
}

function numberOfChildren() {
    return sub_96102cf4.length
}

function sub_726aba7f(?) {
    return sub_726aba7fAddress
}

function accessControls() {
    return accessControlsAddress
}

function sub_96102cf4(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_96102cf4.length
    return sub_96102cf4[arg1]
}

function misoDiv() {
    return address(misoDivAddress)
}

function newAddress() {
    return newAddress
}

function isChild(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function initListFactory(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor0
    if not arg1:
        revert with 0, 'Incorrect access controls'
    if not arg2:
        revert with 0, 'Incorrect list template'
    sub_726aba7fAddress = arg2
    minimumFee = arg3
    accessControlsAddress = arg1
    stor0 = 1
    emit MisoInitListFactory()
}

function setDividends(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724d49534f546f6b656e466163746f72793a2053656e646572206d7573742062652041646d69,
                    mem[202 len 26]
    address(misoDivAddress) = arg1
}

function setMinimumFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4c697374466163746f72793a2053656e646572206d7573742062652061646d69,
                    mem[197 len 31]
    emit MinimumFeeUpdated(minimumFee, arg1);
    minimumFee = arg1
}

function deprecateFactory(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4c697374466163746f72793a2053656e646572206d7573742062652061646d69,
                    mem[197 len 31]
    require not newAddress
    emit FactoryDeprecated(arg1);
    newAddress = arg1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e4c697374466163746f72793a2053656e646572206d757374206265206f70657261746f,
                    mem[200 len 28]
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor6)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), Mask(224, 0, stor6)
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size:
            require return_data.size >= 32
            require mem[228]
    return 1
}

function sub_424599a3(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require msg.value >= minimumFee
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, sub_726aba7fAddress, 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(address(create.new_address))
    if not arg2.length:
        call address(create.new_address).0x283ba19b with:
             gas gas_remaining wei
            args arg1
    else:
        call address(create.new_address).0x283ba19b with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[196 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[(32 * arg2.length) + 196] = 0
        mem[floor32(arg2.length) + 196] = arg3.length
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x9a80c4a1 with:
             gas gas_remaining wei
            args 0, 64, floor32(arg2.length) + 96, arg2.length, mem[196 len floor32(arg2.length) + 32], call.data[arg3 + 36 len floor32(arg3.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x6595171c with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xdccfe310 with:
             gas gas_remaining wei
            args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[address(create.new_address)] = 1
    sub_96102cf4.length++
    stor36B6[stor5.length] = address(create.new_address)
    emit PointListDeployed(sub_726aba7fAddress, arg1, msg.sender, address(create.new_address));
    if msg.value:
        call address(misoDivAddress) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
