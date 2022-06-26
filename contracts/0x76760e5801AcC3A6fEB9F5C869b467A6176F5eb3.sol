contract main {




// =====================  Runtime code  =====================


#
#  - mate(uint256 arg1, uint256 arg2)
#
const devAddress = 0x7b5caaba0daf0c355959eb47a2ecff4517d2632


uint8 stor0; offset 160
address owner;
uint256 stor1;
address sub_c352d288Address;
uint32 stor3;
address stakingContractAddress;
uint256 stor3;
uint256 price;
address sub_68b7693bAddress;
address stor6;

function stakingContractAddress() {
    return address(stakingContractAddress)
}

function paused() {
    return bool(stor0)
}

function sub_68b7693b(?) {
    return sub_68b7693bAddress
}

function owner() {
    return owner
}

function price() {
    return price
}

function sub_c352d288(?) {
    return sub_c352d288Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function sub_2fd467db(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = address(arg1)
}

function setStakingContractAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stakingContractAddress) = arg1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    call stor6.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address)
    call 0x07b5caaba0daf0c355959eb47a2ecff4517d2632 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function inCaseTokensGetStuck(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function getCurrentPrice() {
    staticcall stor6.0x59a7715a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] and 34444445 * 10^15 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 0 > !(34444445 * 10^15 * ext_call.return_data[0]):
            revert with 0, 17
        if 5555555 * 10^18 > !(34444445 * 10^15 * ext_call.return_data[0]):
            revert with 0, 17
        return ((34444445 * 10^15 * ext_call.return_data[0]) + 5555555 * 10^18 / 10^18)
    if ext_call.return_data[0] == 1:
        if ext_call.return_data[0] and 34444445 * 10^15 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 146666668 * 10^11 > !(34444445 * 10^15 * ext_call.return_data[0]):
            revert with 0, 17
        if 5555555 * 10^18 > !((34444445 * 10^15 * ext_call.return_data[0]) + 146666668 * 10^11):
            revert with 0, 17
        return ((34444445 * 10^15 * ext_call.return_data[0]) + 55555696666668 * 10^11 / 10^18)
    if ext_call.return_data[0] == 2:
        if ext_call.return_data[0] and 34444445 * 10^15 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 586666672 * 10^11 > !(34444445 * 10^15 * ext_call.return_data[0]):
            revert with 0, 17
        if 5555555 * 10^18 > !((34444445 * 10^15 * ext_call.return_data[0]) + 586666672 * 10^11):
            revert with 0, 17
        return ((34444445 * 10^15 * ext_call.return_data[0]) + 55556136666672 * 10^11 / 10^18)
    if bool(bool(ext_call.return_data[0] < 11)) or bool(bool(ext_call.return_data[0] < 307)):
        if ext_call.return_data[0] and 34444445 * 10^15 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0]^2 and 146666668 * 10^11 > -1 / ext_call.return_data[0]^2:
            revert with 0, 17
        if 146666668 * 10^11 * ext_call.return_data[0]^2 > !(34444445 * 10^15 * ext_call.return_data[0]):
            revert with 0, 17
        if 5555555 * 10^18 > !((146666668 * 10^11 * ext_call.return_data[0]^2) + (34444445 * 10^15 * ext_call.return_data[0])):
            revert with 0, 17
        return ((146666668 * 10^11 * ext_call.return_data[0]^2) + (34444445 * 10^15 * ext_call.return_data[0]) + 5555555 * 10^18 / 10^18)
    s = ext_call.return_data[0]
    idx = 2
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        s = s * s
        idx = uint255(idx) * 0.5
        continue 
    if 1 > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] and 34444445 * 10^15 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if s and 146666668 * 10^11 > -1 / s:
        revert with 0, 17
    if 146666668 * 10^11 * s > !(34444445 * 10^15 * ext_call.return_data[0]):
        revert with 0, 17
    if 5555555 * 10^18 > !((146666668 * 10^11 * s) + (34444445 * 10^15 * ext_call.return_data[0])):
        revert with 0, 17
    return ((146666668 * 10^11 * s) + (34444445 * 10^15 * ext_call.return_data[0]) + 5555555 * 10^18 / 10^18)
}

function sub_621495a3(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor0:
            revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if msg.value < price:
        revert with 0, 'Value below price'
    require ext_code.size(sub_68b7693bAddress)
    call sub_68b7693bAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    staticcall sub_68b7693bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    require return_data.size >= 32
    if ext_call.return_data[0] and 25 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < 25 * ext_call.return_data[0] / 100:
        revert with 0, 17
    mem[ceil32(return_data.size) + 132] = address(stakingContractAddress)
    mem[ceil32(return_data.size) + 164] = 25 * ext_call.return_data[0] / 100
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_68b7693bAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 25 * ext_call.return_data[0] / 100, 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_68b7693bAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 25 * ext_call.return_data[0] / 100, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 25 * ext_call.return_data[0] / 100, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 296] = sub_c352d288Address
        mem[ceil32(return_data.size) + 328] = ext_call.return_data[0] - (25 * ext_call.return_data[0] / 100)
        mem[ceil32(return_data.size) + 260] = 68
        mem[ceil32(return_data.size) + 292 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 360] = 32
        mem[ceil32(return_data.size) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_68b7693bAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 424 len 96] = 0, sub_c352d288Address, ext_call.return_data[0] - (25 * ext_call.return_data[0] / 100), 0
        mem[ceil32(return_data.size) + 492] = 0
        call sub_68b7693bAddress with:
           funct Mask(32, 224, 0, sub_c352d288Address, ext_call.return_data[0] - (25 * ext_call.return_data[0] / 100), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, sub_c352d288Address, ext_call.return_data[0] - (25 * ext_call.return_data[0] / 100), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                if not mem[ceil32(return_data.size) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(stor6)
        call stor6.0x156e29f6 with:
             gas gas_remaining wei
            args msg.sender, arg1, arg2
    else:
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = sub_c352d288Address
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0] - (25 * ext_call.return_data[0] / 100)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 68
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_68b7693bAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, sub_c352d288Address, ext_call.return_data[0] - (25 * ext_call.return_data[0] / 100), 0
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 493] = 0
        call sub_68b7693bAddress with:
           funct Mask(32, 224, 0, sub_c352d288Address, ext_call.return_data[0] - (25 * ext_call.return_data[0] / 100), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, sub_c352d288Address, ext_call.return_data[0] - (25 * ext_call.return_data[0] / 100), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(stor6)
            call stor6.0x156e29f6 with:
                 gas gas_remaining wei
                args msg.sender, arg1, arg2
        else:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 430] = 32
                mem[(4 * ceil32(return_data.size)) + 462] = 32
                mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 426
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
                if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
                    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 430] = 32
                    mem[(4 * ceil32(return_data.size)) + 462] = 42
                    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 426
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 430] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 462] = arg1
            mem[(4 * ceil32(return_data.size)) + 494] = arg2
            require ext_code.size(stor6)
            call stor6.0x156e29f6 with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 430 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}



}
