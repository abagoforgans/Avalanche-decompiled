contract main {




// =====================  Runtime code  =====================


#
#  - repay(address arg1, uint256 arg2)
#  - sub_2b85418a(?)
#
const sub_28049b39(?) = 0x1d83fe6a10d2f2b7af17034343746188272cac9

const getLendingPoolAddress = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c

const getReferralCode = 0

const getAddressETH = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const getWETH = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


function _fallback() payable {
    revert
}

function borrow(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
             gas gas_remaining wei
            args 0, 2247976647, arg2, 2, 0, address(this.address)
    else:
        call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
             gas gas_remaining wei
            args 0, 0, arg2, 2, 0, address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogBorrow(arg2, arg1);
}

function sub_3d5f93d7(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 228
    t = cd[4] + 36
    while idx < ('cd', 4).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
    call 0x01d83fe6a10d2f2b7af17034343746188272cac9.claimRewards(address[] arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[228 len 32 * ('cd', 4).length]), cd[36], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if cd[68]:
        require ext_code.size(this.address)
        staticcall this.address.0x7b103999 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(ext_call.return_data[12 len 20])
        staticcall ext_call.return_data[12 len 20].0x46904840 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
             gas gas_remaining wei
            args ext_call.return_data[12 len 20], cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xe88a7935: cd[36], cd[68]
}

function sub_04a05e4b(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if not address(arg3):
        revert with 0, 'INVALID ASSET'
    if arg2 <= 0:
        revert with 0, 'ZERO AMOUNT'
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'INVALID AMOUNT'
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    if address(arg1) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, this.address
    else:
        call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg4:
        require ext_code.size(this.address)
        staticcall this.address.0x7b103999 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x46904840 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            call ext_call.return_data[12 len 20] with:
               value arg4 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit LogRedeem(arg2, arg4, address(arg1));
}



}
