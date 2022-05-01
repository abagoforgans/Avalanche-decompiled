contract main {




// =====================  Runtime code  =====================


#
#  - sub_01c86959(?)
#  - sub_0725b242(?)
#  - sub_3d44f9c5(?)
#  - sub_43ded848(?)
#  - sub_684446a5(?)
#  - withdrawToken(address arg1, uint256 arg2)
#  - sub_d3532814(?)
#  - sub_e0009d69(?)
#  - _fallback()
#
const balanceOf = eth.balance(this.address)


uint32 stor0;
address owner;
uint256 stor0;
mapping of uint8 stor1;
address stor2;
uint256 sub_d8a97cc6;
mapping of uint8 sub_78a72ec9;

function caller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_78a72ec9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_78a72ec9[arg1]
}

function owner() {
    return address(owner)
}

function sub_d8a97cc6(?) {
    return sub_d8a97cc6
}

function deposit() payable {
  stop
}

function setWethAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    stor2 = arg1
}

function setCaller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    stor1[address(arg1)] = 1
}

function removeCaller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    stor1[address(arg1)] = 0
}

function withdrawAll() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TH: ETH_TRANSFER_FAILED'
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    call address(owner) with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TH: ETH_TRANSFER_FAILED'
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    emit OwnerChanged(address(owner), arg1);
    address(owner) = arg1
}

function sqrt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if 1 > !arg1:
        revert with 0, 17
    s = arg1 + 1 / 2
    t = arg1
    while s < t:
        if not s:
            revert with 0, 18
        if arg1 / s > !s:
            revert with 0, 17
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5629d258(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not address(arg1):
        revert with 0, 'INVALID TOKEN'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call address(arg1).mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TH: TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'TH: TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TH: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TH: TRANSFER_FAILED'
}



}
