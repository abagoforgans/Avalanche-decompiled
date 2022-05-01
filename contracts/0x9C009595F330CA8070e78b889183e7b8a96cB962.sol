contract main {




// =====================  Runtime code  =====================


#
#  - clipperCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
const RAY = 1000000000 * 10^18


address dssPsmAddress;
address uniRouter02Address;
address daiJoinAddress;
address daiAddress;
mapping of address bridges;

function uniRouter02() payable {
    return uniRouter02Address
}

function daiJoin() payable {
    return daiJoinAddress
}

function dssPsm() payable {
    return dssPsmAddress
}

function bridges(address arg1) payable {
    require calldata.size - 4 >= 32
    return bridges[arg1]
}

function dai() payable {
    return daiAddress
}

function _fallback() payable {
    revert
}



}
