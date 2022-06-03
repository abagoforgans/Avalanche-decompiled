contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint8 stor2;
address creatorAddress; offset 8
uint256 entryFee;
uint256 stor4;
uint256 sub_c90900b9;
uint256 sub_af5d9ff4;
uint256 sub_025fa8ba;
uint8 stor8;
uint256 stor8;
mapping of uint256 sub_170eb225;

function sub_025fa8ba(?) {
    return sub_025fa8ba
}

function creator() {
    return creatorAddress
}

function entryFee() {
    return entryFee
}

function sub_170eb225(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2:
        revert with 0, 'Pausable: paused'
    return sub_170eb225[address(arg1)]
}

function paused() {
    return bool(stor2)
}

function owner() {
    return owner
}

function sub_af5d9ff4(?) {
    return sub_af5d9ff4
}

function sub_c90900b9(?) {
    return sub_c90900b9
}

function _fallback() payable {
  stop
}

function getBalance() {
    if stor2:
        revert with 0, 'Pausable: paused'
    return eth.balance(this.address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_846d2726(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    uint256(stor8) = not bool(uint8(stor8)) or Mask(248, 8, uint256(stor8))
}

function sub_a4f9640d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    sub_025fa8ba = arg1
}

function setEntryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    entryFee = arg1
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

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    if arg2 >= eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't withdraw EVERYTHING, come on...'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'owner withdraw fail'
}

function sub_da0a0940(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    if entryFee and sub_025fa8ba > -1 / entryFee:
        revert with 'NH{q', 17
    if sub_170eb225[address(arg1)] > -(entryFee * sub_025fa8ba / 100) - 1:
        revert with 'NH{q', 17
    sub_170eb225[address(arg1)] += entryFee * sub_025fa8ba / 100
    if sub_c90900b9 > -sub_170eb225[address(arg1)] - 1:
        revert with 'NH{q', 17
    sub_c90900b9 += sub_170eb225[address(arg1)]
    if sub_af5d9ff4 > -sub_170eb225[address(arg1)] - 1:
        revert with 'NH{q', 17
    sub_af5d9ff4 += sub_170eb225[address(arg1)]
}

function claimWinnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    if bool(uint8(stor8)) != 1:
        revert with 0, 'winnings claim not open'
    if not arg1:
        revert with 0, 'Not valid address'
    if arg1 != msg.sender:
        revert with 0, 'Claiming for wrong address'
    if sub_170eb225[address(arg1)] <= 0:
        revert with 0, 'no winnings to claim'
    sub_170eb225[address(arg1)] = 0
    if sub_af5d9ff4 < sub_170eb225[address(arg1)]:
        revert with 'NH{q', 17
    sub_af5d9ff4 -= sub_170eb225[address(arg1)]
    call arg1 with:
       value sub_170eb225[address(arg1)] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'game winnings claim fail'
    stor1 = 1
}

function payEntryFee() payable {
    if msg.value > 100:
        if entryFee != msg.value:
            revert with 0, 'Wrong amount sent'
    else:
        if not stor4:
            if msg.value and 1 > -1 / msg.value:
                revert with 'NH{q', 17
            if entryFee != msg.value:
                revert with 0, 'Wrong amount sent'
        else:
            if bool(bool(stor4 < 78)) or bool(bool(stor4 < 32)):
                if 10^stor4 > -1:
                    revert with 'NH{q', 17
                if msg.value and 10^stor4 > -1 / msg.value:
                    revert with 'NH{q', 17
                if msg.value * 10^stor4 != entryFee:
                    revert with 0, 'Wrong amount sent'
            else:
                s = 10
                t = 1
                idx = stor4
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
                if msg.value and t * s > -1 / msg.value:
                    revert with 'NH{q', 17
                if msg.value * t * s != entryFee:
                    revert with 0, 'Wrong amount sent'
}



}
